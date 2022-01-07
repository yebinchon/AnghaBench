
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 scalar_t__ fsync_fname_ext (char*,int,int,int) ;
 int get_parent_directory (char*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
fsync_parent_path(const char *fname, int elevel)
{
 char parentpath[MAXPGPATH];

 strlcpy(parentpath, fname, MAXPGPATH);
 get_parent_directory(parentpath);






 if (strlen(parentpath) == 0)
  strlcpy(parentpath, ".", MAXPGPATH);

 if (fsync_fname_ext(parentpath, 1, 0, elevel) != 0)
  return -1;

 return 0;
}
