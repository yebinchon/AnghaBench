
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sebuf ;
struct TYPE_6__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;
typedef int Oid ;


 int INV_READ ;
 int LO_BUFSIZE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PG_BINARY ;
 int PG_STRERROR_R_BUFLEN ;
 scalar_t__ close (int) ;
 int errno ;
 int libpq_gettext (char*) ;
 scalar_t__ lo_close (TYPE_1__*,int) ;
 int lo_open (TYPE_1__*,int ,int ) ;
 int lo_read (TYPE_1__*,int,char*,int) ;
 int open (char const*,int,int) ;
 int printfPQExpBuffer (int *,int ,char const*,int ) ;
 int strerror_r (int,char*,int) ;
 int write (int,char*,int) ;

int
lo_export(PGconn *conn, Oid lobjId, const char *filename)
{
 int result = 1;
 int fd;
 int nbytes,
    tmp;
 char buf[LO_BUFSIZE];
 int lobj;
 char sebuf[PG_STRERROR_R_BUFLEN];




 lobj = lo_open(conn, lobjId, INV_READ);
 if (lobj == -1)
 {

  return -1;
 }




 fd = open(filename, O_CREAT | O_WRONLY | O_TRUNC | PG_BINARY, 0666);
 if (fd < 0)
 {

  int save_errno = errno;

  (void) lo_close(conn, lobj);
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not open file \"%s\": %s\n"),
        filename,
        strerror_r(save_errno, sebuf, sizeof(sebuf)));
  return -1;
 }




 while ((nbytes = lo_read(conn, lobj, buf, LO_BUFSIZE)) > 0)
 {
  tmp = write(fd, buf, nbytes);
  if (tmp != nbytes)
  {

   int save_errno = errno;

   (void) lo_close(conn, lobj);
   (void) close(fd);
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not write to file \"%s\": %s\n"),
         filename,
         strerror_r(save_errno, sebuf, sizeof(sebuf)));
   return -1;
  }
 }







 if (nbytes < 0 ||
  lo_close(conn, lobj) != 0)
 {

  result = -1;
 }


 if (close(fd) != 0 && result >= 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not write to file \"%s\": %s\n"),
        filename, strerror_r(errno, sebuf, sizeof(sebuf)));
  result = -1;
 }

 return result;
}
