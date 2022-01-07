
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int Oid ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERRCODE_UNDEFINED_FILE ;
 int ERROR ;
 scalar_t__ InRecovery ;
 scalar_t__ MakePGDirectory (char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int TABLESPACE_VERSION_DIRECTORY ;
 int WARNING ;
 scalar_t__ chmod (char const*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int pfree (char*) ;
 int pg_dir_create_mode ;
 char* psprintf (char*,char const*,...) ;
 int remove_tablespace_symlink (char*) ;
 int rmtree (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ symlink (char const*,char*) ;

__attribute__((used)) static void
create_tablespace_directories(const char *location, const Oid tablespaceoid)
{
 char *linkloc;
 char *location_with_version_dir;
 struct stat st;

 linkloc = psprintf("pg_tblspc/%u", tablespaceoid);
 location_with_version_dir = psprintf("%s/%s", location,
           TABLESPACE_VERSION_DIRECTORY);





 if (chmod(location, pg_dir_create_mode) != 0)
 {
  if (errno == ENOENT)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_FILE),
      errmsg("directory \"%s\" does not exist", location),
      InRecovery ? errhint("Create this directory for the tablespace before "
            "restarting the server.") : 0));
  else
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not set permissions on directory \"%s\": %m",
       location)));
 }

 if (InRecovery)
 {





  if (stat(location_with_version_dir, &st) == 0 && S_ISDIR(st.st_mode))
  {
   if (!rmtree(location_with_version_dir, 1))

    ereport(WARNING,
      (errmsg("some useless files may be left behind in old database directory \"%s\"",
        location_with_version_dir)));
  }
 }





 if (MakePGDirectory(location_with_version_dir) < 0)
 {
  if (errno == EEXIST)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_IN_USE),
      errmsg("directory \"%s\" already in use as a tablespace",
       location_with_version_dir)));
  else
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not create directory \"%s\": %m",
       location_with_version_dir)));
 }




 if (InRecovery)
  remove_tablespace_symlink(linkloc);




 if (symlink(location, linkloc) < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not create symbolic link \"%s\": %m",
      linkloc)));

 pfree(linkloc);
 pfree(location_with_version_dir);
}
