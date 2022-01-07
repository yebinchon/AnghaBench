
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int Oid ;


 int INV_READ ;
 int SEEK_SET ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int lo_close (int *,int) ;
 int lo_lseek (int *,int,int,int ) ;
 int lo_open (int *,int,int ) ;
 int lo_read (int *,int,char*,int) ;
 char* malloc (int) ;
 int stderr ;

__attribute__((used)) static void
pickout(PGconn *conn, Oid lobjId, int start, int len)
{
 int lobj_fd;
 char *buf;
 int nbytes;
 int nread;

 lobj_fd = lo_open(conn, lobjId, INV_READ);
 if (lobj_fd < 0)
  fprintf(stderr, "cannot open large object %u", lobjId);

 lo_lseek(conn, lobj_fd, start, SEEK_SET);
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
