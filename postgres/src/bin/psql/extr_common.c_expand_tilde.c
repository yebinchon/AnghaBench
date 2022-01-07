
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_dir; } ;
typedef int home ;


 int MAXPGPATH ;
 int free (char*) ;
 int get_home_path (char*) ;
 struct passwd* getpwnam (char*) ;
 char* psprintf (char*,char*,char*) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strlen (char*) ;

void
expand_tilde(char **filename)
{
 if (!filename || !(*filename))
  return;
 if (**filename == '~')
 {
  char *fn;
  char oldp,
       *p;
  struct passwd *pw;
  char home[MAXPGPATH];

  fn = *filename;
  *home = '\0';

  p = fn + 1;
  while (*p != '/' && *p != '\0')
   p++;

  oldp = *p;
  *p = '\0';

  if (*(fn + 1) == '\0')
   get_home_path(home);
  else if ((pw = getpwnam(fn + 1)) != ((void*)0))
   strlcpy(home, pw->pw_dir, sizeof(home));

  *p = oldp;
  if (strlen(home) != 0)
  {
   char *newfn;

   newfn = psprintf("%s%s", home, p);
   free(fn);
   *filename = newfn;
  }
 }


 return;
}
