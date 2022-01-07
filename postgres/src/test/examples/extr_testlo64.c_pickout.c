
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_int64 ;
typedef int PGconn ;
typedef int Oid ;


 int INV_READ ;
 char* PQerrorMessage (int *) ;
 int SEEK_SET ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int lo_close (int *,int) ;
 scalar_t__ lo_lseek64 (int *,int,int ,int ) ;
 int lo_open (int *,int,int ) ;
 int lo_read (int *,int,char*,int) ;
 int lo_tell64 (int *,int) ;
 char* malloc (int) ;
 int stderr ;

__attribute__((used)) static void
pickout(PGconn *conn, Oid lobjId, pg_int64 start, int len)
{
 int lobj_fd;
 char *buf;
 int nbytes;
 int nread;

 lobj_fd = lo_open(conn, lobjId, INV_READ);
 if (lobj_fd < 0)
  fprintf(stderr, "cannot open large object %u", lobjId);

 if (lo_lseek64(conn, lobj_fd, start, SEEK_SET) < 0)
  fprintf(stderr, "error in lo_lseek64: %s", PQerrorMessage(conn));

 if (lo_tell64(conn, lobj_fd) != start)
  fprintf(stderr, "error in lo_tell64: %s", PQerrorMessage(conn));

 buf = malloc(len + 1);

 nread = 0;
 while (len - nread > 0)
 {
  nbytes = lo_read(conn, lobj_fd, buf, len - nread);
  buf[nbytes] = '\0';
  fprintf(stderr, ">>> %s", buf);
  nread += nbytes;
  if (nbytes <= 0)
   break;
 }
 free(buf);
 fprintf(stderr, "\n");
 lo_close(conn, lobj_fd);
}
