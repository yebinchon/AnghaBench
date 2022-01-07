
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sebuf ;
struct TYPE_8__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;
typedef scalar_t__ Oid ;


 int INV_READ ;
 int INV_WRITE ;
 scalar_t__ InvalidOid ;
 int LO_BUFSIZE ;
 int O_RDONLY ;
 int PG_BINARY ;
 int PG_STRERROR_R_BUFLEN ;
 int close (int) ;
 int errno ;
 int libpq_gettext (char*) ;
 scalar_t__ lo_close (TYPE_1__*,int) ;
 scalar_t__ lo_creat (TYPE_1__*,int) ;
 scalar_t__ lo_create (TYPE_1__*,scalar_t__) ;
 int lo_open (TYPE_1__*,scalar_t__,int) ;
 int lo_write (TYPE_1__*,int,char*,int) ;
 int open (char const*,int,int) ;
 int printfPQExpBuffer (int *,int ,char const*,int ) ;
 int read (int,char*,int) ;
 int strerror_r (int,char*,int) ;

__attribute__((used)) static Oid
lo_import_internal(PGconn *conn, const char *filename, Oid oid)
{
 int fd;
 int nbytes,
    tmp;
 char buf[LO_BUFSIZE];
 Oid lobjOid;
 int lobj;
 char sebuf[PG_STRERROR_R_BUFLEN];




 fd = open(filename, O_RDONLY | PG_BINARY, 0666);
 if (fd < 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not open file \"%s\": %s\n"),
        filename, strerror_r(errno, sebuf, sizeof(sebuf)));
  return InvalidOid;
 }




 if (oid == InvalidOid)
  lobjOid = lo_creat(conn, INV_READ | INV_WRITE);
 else
  lobjOid = lo_create(conn, oid);

 if (lobjOid == InvalidOid)
 {

  (void) close(fd);
  return InvalidOid;
 }

 lobj = lo_open(conn, lobjOid, INV_WRITE);
 if (lobj == -1)
 {

  (void) close(fd);
  return InvalidOid;
 }




 while ((nbytes = read(fd, buf, LO_BUFSIZE)) > 0)
 {
  tmp = lo_write(conn, lobj, buf, nbytes);
  if (tmp != nbytes)
  {






   (void) close(fd);
   return InvalidOid;
  }
 }

 if (nbytes < 0)
 {

  int save_errno = errno;

  (void) lo_close(conn, lobj);
  (void) close(fd);
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not read from file \"%s\": %s\n"),
        filename,
        strerror_r(save_errno, sebuf, sizeof(sebuf)));
  return InvalidOid;
 }

 (void) close(fd);

 if (lo_close(conn, lobj) != 0)
 {

  return InvalidOid;
 }

 return lobjOid;
}
