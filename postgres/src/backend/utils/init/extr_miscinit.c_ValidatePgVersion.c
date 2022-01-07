
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full_path ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ ENOENT ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int FATAL ;
 int FreeFile (int *) ;
 int MAXPGPATH ;
 char* PG_VERSION ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 int fscanf (int *,char*,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 long strtol (char const*,char**,int) ;

void
ValidatePgVersion(const char *path)
{
 char full_path[MAXPGPATH];
 FILE *file;
 int ret;
 long file_major;
 long my_major;
 char *endptr;
 char file_version_string[64];
 const char *my_version_string = PG_VERSION;

 my_major = strtol(my_version_string, &endptr, 10);

 snprintf(full_path, sizeof(full_path), "%s/PG_VERSION", path);

 file = AllocateFile(full_path, "r");
 if (!file)
 {
  if (errno == ENOENT)
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("\"%s\" is not a valid data directory",
       path),
      errdetail("File \"%s\" is missing.", full_path)));
  else
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", full_path)));
 }

 file_version_string[0] = '\0';
 ret = fscanf(file, "%63s", file_version_string);
 file_major = strtol(file_version_string, &endptr, 10);

 if (ret != 1 || endptr == file_version_string)
  ereport(FATAL,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("\"%s\" is not a valid data directory",
      path),
     errdetail("File \"%s\" does not contain valid data.",
         full_path),
     errhint("You might need to initdb.")));

 FreeFile(file);

 if (my_major != file_major)
  ereport(FATAL,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("database files are incompatible with server"),
     errdetail("The data directory was initialized by PostgreSQL version %s, "
         "which is not compatible with this version %s.",
         file_version_string, my_version_string)));
}
