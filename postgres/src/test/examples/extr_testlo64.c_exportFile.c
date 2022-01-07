
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int Oid ;


 int BUFSIZE ;
 int INV_READ ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int lo_close (int *,int) ;
 int lo_open (int *,int,int ) ;
 int lo_read (int *,int,char*,int) ;
 int open (char*,int,int) ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static void
exportFile(PGconn *conn, Oid lobjId, char *filename)
{
 int lobj_fd;
 char buf[BUFSIZE];
 int nbytes,
    tmp;
 int fd;




 lobj_fd = lo_open(conn, lobjId, INV_READ);
 if (lobj_fd < 0)
  fprintf(stderr, "cannot open large object %u", lobjId);




 fd = open(filename, O_CREAT | O_WRONLY | O_TRUNC, 0666);
 if (fd < 0)
 {
  fprintf(stderr, "cannot open unix file\"%s\"",
    filename);
 }




 while ((nbytes = lo_read(conn, lobj_fd, buf, BUFSIZE)) > 0)
 {
  tmp = write(fd, buf, nbytes);
  if (tmp < nbytes)
  {
   fprintf(stderr, "error while writing \"%s\"",
     filename);
  }
 }

 lo_close(conn, lobj_fd);
 close(fd);

 return;
}
