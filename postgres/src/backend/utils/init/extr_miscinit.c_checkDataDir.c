
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; } ;


 int Assert (int ) ;
 int DataDir ;
 scalar_t__ ENOENT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int FATAL ;
 int PG_MODE_MASK_GROUP ;
 int S_ISDIR (int) ;
 int SetDataDirectoryCreatePerm (int) ;
 int ValidatePgVersion (int ) ;
 int data_directory_mode ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ geteuid () ;
 int pg_dir_create_mode ;
 int pg_mode_mask ;
 scalar_t__ stat (int ,struct stat*) ;
 int umask (int ) ;

void
checkDataDir(void)
{
 struct stat stat_buf;

 Assert(DataDir);

 if (stat(DataDir, &stat_buf) != 0)
 {
  if (errno == ENOENT)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("data directory \"%s\" does not exist",
       DataDir)));
  else
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not read permissions of directory \"%s\": %m",
       DataDir)));
 }


 if (!S_ISDIR(stat_buf.st_mode))
  ereport(FATAL,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("specified data directory \"%s\" is not a directory",
      DataDir)));
 if (stat_buf.st_uid != geteuid())
  ereport(FATAL,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("data directory \"%s\" has wrong ownership",
      DataDir),
     errhint("The server must be started by the user that owns the data directory.")));
 if (stat_buf.st_mode & PG_MODE_MASK_GROUP)
  ereport(FATAL,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("data directory \"%s\" has invalid permissions",
      DataDir),
     errdetail("Permissions should be u=rwx (0700) or u=rwx,g=rx (0750).")));
 SetDataDirectoryCreatePerm(stat_buf.st_mode);

 umask(pg_mode_mask);
 data_directory_mode = pg_dir_create_mode;



 ValidatePgVersion(DataDir);
}
