
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; } ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int FATAL ;
 int LOG ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IXGRP ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ geteuid () ;
 scalar_t__ stat (char const*,struct stat*) ;

bool
check_ssl_key_file_permissions(const char *ssl_key_file, bool isServerStart)
{
 int loglevel = isServerStart ? FATAL : LOG;
 struct stat buf;

 if (stat(ssl_key_file, &buf) != 0)
 {
  ereport(loglevel,
    (errcode_for_file_access(),
     errmsg("could not access private key file \"%s\": %m",
      ssl_key_file)));
  return 0;
 }

 if (!S_ISREG(buf.st_mode))
 {
  ereport(loglevel,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("private key file \"%s\" is not a regular file",
      ssl_key_file)));
  return 0;
 }







 if (buf.st_uid != geteuid() && buf.st_uid != 0)
 {
  ereport(loglevel,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("private key file \"%s\" must be owned by the database user or root",
      ssl_key_file)));
  return 0;
 }
 if ((buf.st_uid == geteuid() && buf.st_mode & (S_IRWXG | S_IRWXO)) ||
  (buf.st_uid == 0 && buf.st_mode & (S_IWGRP | S_IXGRP | S_IRWXO)))
 {
  ereport(loglevel,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("private key file \"%s\" has group or world access",
      ssl_key_file),
     errdetail("File must have permissions u=rw (0600) or less if owned by the database user, or permissions u=rw,g=r (0640) or less if owned by root.")));
  return 0;
 }


 return 1;
}
