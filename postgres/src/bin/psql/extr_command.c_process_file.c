
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int relpath ;
struct TYPE_2__ {char* inputfile; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int MAXPGPATH ;
 int MainLoop (int *) ;
 int PG_BINARY_R ;
 int PG_LOG_FLAG_TERSE ;
 int canonicalize_path (char*) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int get_parent_directory (char*) ;
 int has_drive_prefix (char*) ;
 int is_absolute_path (char*) ;
 int join_path_components (char*,char*,char*) ;
 int pg_log_error (char*,char*) ;
 int pg_logging_config (int ) ;
 TYPE_1__ pset ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;

int
process_file(char *filename, bool use_relative_path)
{
 FILE *fd;
 int result;
 char *oldfilename;
 char relpath[MAXPGPATH];

 if (!filename)
 {
  fd = stdin;
  filename = ((void*)0);
 }
 else if (strcmp(filename, "-") != 0)
 {
  canonicalize_path(filename);







  if (use_relative_path && pset.inputfile &&
   !is_absolute_path(filename) && !has_drive_prefix(filename))
  {
   strlcpy(relpath, pset.inputfile, sizeof(relpath));
   get_parent_directory(relpath);
   join_path_components(relpath, relpath, filename);
   canonicalize_path(relpath);

   filename = relpath;
  }

  fd = fopen(filename, PG_BINARY_R);

  if (!fd)
  {
   pg_log_error("%s: %m", filename);
   return EXIT_FAILURE;
  }
 }
 else
 {
  fd = stdin;
  filename = "<stdin>";
 }

 oldfilename = pset.inputfile;
 pset.inputfile = filename;

 pg_logging_config(pset.inputfile ? 0 : PG_LOG_FLAG_TERSE);

 result = MainLoop(fd);

 if (fd != stdin)
  fclose(fd);

 pset.inputfile = oldfilename;

 pg_logging_config(pset.inputfile ? 0 : PG_LOG_FLAG_TERSE);

 return result;
}
