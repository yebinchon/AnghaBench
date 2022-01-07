
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_int64 ;
typedef int PGconn ;
typedef int Oid ;


 int INV_WRITE ;
 char* PQerrorMessage (int *) ;
 int SEEK_SET ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int lo_close (int *,int) ;
 scalar_t__ lo_lseek64 (int *,int,int ,int ) ;
 int lo_open (int *,int,int ) ;
 int lo_write (int *,int,char*,int) ;
 char* malloc (int) ;
 int stderr ;

__attribute__((used)) static void
overwrite(PGconn *conn, Oid lobjId, pg_int64 start, int len)
{
 int lobj_fd;
 char *buf;
 int nbytes;
 int nwritten;
 int i;

 lobj_fd = lo_open(conn, lobjId, INV_WRITE);
 if (lobj_fd < 0)
  fprintf(stderr, "cannot open large object %u", lobjId);

 if (lo_lseek64(conn, lobj_fd, start, SEEK_SET) < 0)
  fprintf(stderr, "error in lo_lseek64: %s", PQerrorMessage(conn));

 buf = malloc(len + 1);

 for (i = 0; i < len; i++)
  buf[i] = 'X';
 buf[i] = '\0';

 nwritten = 0;
 while (len - nwritten > 0)
 {
  nbytes = lo_write(conn, lobj_fd, buf + nwritten, len - nwritten);
  nwritten += nbytes;
  if (nbytes <= 0)
  {
   fprintf(stderr, "\nWRITE FAILED!\n");
   break;
  }
 }
 free(buf);
 fprintf(stderr, "\n");
 lo_close(conn, lobj_fd);
}
