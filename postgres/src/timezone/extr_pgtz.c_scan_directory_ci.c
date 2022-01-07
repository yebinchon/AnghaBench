
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 int LOG ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;
 scalar_t__ pg_strncasecmp (char*,char const*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static bool
scan_directory_ci(const char *dirname, const char *fname, int fnamelen,
      char *canonname, int canonnamelen)
{
 bool found = 0;
 DIR *dirdesc;
 struct dirent *direntry;

 dirdesc = AllocateDir(dirname);

 while ((direntry = ReadDirExtended(dirdesc, dirname, LOG)) != ((void*)0))
 {




  if (direntry->d_name[0] == '.')
   continue;

  if (strlen(direntry->d_name) == fnamelen &&
   pg_strncasecmp(direntry->d_name, fname, fnamelen) == 0)
  {

   strlcpy(canonname, direntry->d_name, canonnamelen);
   found = 1;
   break;
  }
 }

 FreeDir(dirdesc);

 return found;
}
