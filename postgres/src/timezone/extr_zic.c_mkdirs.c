
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int EXIT_FAILURE ;
 int MKDIR_UMASK ;
 int _ (char*) ;
 char* ecpyalloc (char const*) ;
 int errno ;
 int error (int ,int ,char*,int ) ;
 int exit (int ) ;
 int free (char*) ;
 int itsdir (char*) ;
 scalar_t__ mkdir (char*,int ) ;
 int progname ;
 char* strchr (char*,char) ;
 int strerror (int) ;

__attribute__((used)) static void
mkdirs(char const *argname, bool ancestors)
{
 char *name;
 char *cp;

 cp = name = ecpyalloc(argname);
 while (*cp == '/')
  cp++;

 while (cp && ((cp = strchr(cp, '/')) || !ancestors))
 {
  if (cp)
   *cp = '\0';







  if (mkdir(name, MKDIR_UMASK) != 0)
  {





   int err = errno;

   if (err != EEXIST && !itsdir(name))
   {
    error(_("%s: Cannot create directory %s: %s"),
       progname, name, strerror(err));
    exit(EXIT_FAILURE);
   }
  }
  if (cp)
   *cp++ = '/';
 }
 free(name);
}
