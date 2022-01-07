
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 char* XLOGDIR ;
 int fatal_error (char*,...) ;
 char* getenv (char*) ;
 char* pg_strdup (char*) ;
 scalar_t__ search_directory (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;

__attribute__((used)) static char *
identify_target_directory(char *directory, char *fname)
{
 char fpath[MAXPGPATH];

 if (directory != ((void*)0))
 {
  if (search_directory(directory, fname))
   return pg_strdup(directory);


  snprintf(fpath, MAXPGPATH, "%s/%s", directory, XLOGDIR);
  if (search_directory(fpath, fname))
   return pg_strdup(fpath);
 }
 else
 {
  const char *datadir;


  if (search_directory(".", fname))
   return pg_strdup(".");

  if (search_directory(XLOGDIR, fname))
   return pg_strdup(XLOGDIR);

  datadir = getenv("PGDATA");

  if (datadir != ((void*)0))
  {
   snprintf(fpath, MAXPGPATH, "%s/%s", datadir, XLOGDIR);
   if (search_directory(fpath, fname))
    return pg_strdup(fpath);
  }
 }


 if (fname)
  fatal_error("could not locate WAL file \"%s\"", fname);
 else
  fatal_error("could not find any WAL file");

 return ((void*)0);
}
