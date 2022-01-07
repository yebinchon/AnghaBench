
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int fname ;
typedef int Oid ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char const*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int sscanf (char*,char*,int *,int*) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void
pgstat_reset_remove_files(const char *directory)
{
 DIR *dir;
 struct dirent *entry;
 char fname[MAXPGPATH * 2];

 dir = AllocateDir(directory);
 while ((entry = ReadDir(dir, directory)) != ((void*)0))
 {
  int nchars;
  Oid tmp_oid;





  if (strncmp(entry->d_name, "global.", 7) == 0)
   nchars = 7;
  else
  {
   nchars = 0;
   (void) sscanf(entry->d_name, "db_%u.%n",
        &tmp_oid, &nchars);
   if (nchars <= 0)
    continue;

   if (strchr("0123456789", entry->d_name[3]) == ((void*)0))
    continue;
  }

  if (strcmp(entry->d_name + nchars, "tmp") != 0 &&
   strcmp(entry->d_name + nchars, "stat") != 0)
   continue;

  snprintf(fname, sizeof(fname), "%s/%s", directory,
     entry->d_name);
  unlink(fname);
 }
 FreeDir(dir);
}
