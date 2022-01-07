
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int localpath ;


 int MAXPGPATH ;
 char** excludeDirContents ;
 int ** excludeFiles ;
 char* last_dir_separator (char const*) ;
 int pg_log_debug (char*,char const*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char const*,int *) ;
 char const* strstr (char const*,char*) ;

__attribute__((used)) static bool
check_file_excluded(const char *path, bool is_source)
{
 char localpath[MAXPGPATH];
 int excludeIdx;
 const char *filename;


 for (excludeIdx = 0; excludeFiles[excludeIdx] != ((void*)0); excludeIdx++)
 {
  filename = last_dir_separator(path);
  if (filename == ((void*)0))
   filename = path;
  else
   filename++;
  if (strcmp(filename, excludeFiles[excludeIdx]) == 0)
  {
   if (is_source)
    pg_log_debug("entry \"%s\" excluded from source file list",
        path);
   else
    pg_log_debug("entry \"%s\" excluded from target file list",
        path);
   return 1;
  }
 }





 for (excludeIdx = 0; excludeDirContents[excludeIdx] != ((void*)0); excludeIdx++)
 {
  snprintf(localpath, sizeof(localpath), "%s/",
     excludeDirContents[excludeIdx]);
  if (strstr(path, localpath) == path)
  {
   if (is_source)
    pg_log_debug("entry \"%s\" excluded from source file list",
        path);
   else
    pg_log_debug("entry \"%s\" excluded from target file list",
        path);
   return 1;
  }
 }

 return 0;
}
