
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef scalar_t__ Oid ;


 int BUFSIZE ;
 int INV_READ ;
 int INV_WRITE ;
 int O_RDONLY ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int lo_close (int *,int) ;
 scalar_t__ lo_creat (int *,int) ;
 int lo_open (int *,scalar_t__,int) ;
 int lo_write (int *,int,char*,int) ;
 int open (char*,int ,int) ;
 int read (int,char*,int) ;
 int stderr ;

__attribute__((used)) static Oid
importFile(PGconn *conn, char *filename)
{
 Oid lobjId;
 int lobj_fd;
 char buf[BUFSIZE];
 int nbytes,
    tmp;
 int fd;




 fd = open(filename, O_RDONLY, 0666);
 if (fd < 0)
 {
  fprintf(stderr, "cannot open unix file\"%s\"\n", filename);
 }




 lobjId = lo_creat(conn, INV_READ | INV_WRITE);
 if (lobjId == 0)
  fprintf(stderr, "cannot create large object");

 lobj_fd = lo_open(conn, lobjId, INV_WRITE);




 while ((nbytes = read(fd, buf, BUFSIZE)) > 0)
 {
  tmp = lo_write(conn, lobj_fd, buf, nbytes);
  if (tmp < nbytes)
   fprintf(stderr, "error while reading \"%s\"", filename);
 }

 close(fd);
 lo_close(conn, lobj_fd);

 return lobjId;
}
