
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOTDIR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISDIR (int ) ;
 int S_IWUSR ;
 int S_IXUSR ;
 int errno ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 int umask (int) ;

int
pg_mkdir_p(char *path, int omode)
{
 struct stat sb;
 mode_t numask,
    oumask;
 int last,
    retval;
 char *p;

 retval = 0;
 p = path;
 oumask = umask(0);
 numask = oumask & ~(S_IWUSR | S_IXUSR);
 (void) umask(numask);

 if (p[0] == '/')
  ++p;
 for (last = 0; !last; ++p)
 {
  if (p[0] == '\0')
   last = 1;
  else if (p[0] != '/')
   continue;
  *p = '\0';
  if (!last && p[1] == '\0')
   last = 1;

  if (last)
   (void) umask(oumask);


  if (stat(path, &sb) == 0)
  {
   if (!S_ISDIR(sb.st_mode))
   {
    if (last)
     errno = EEXIST;
    else
     errno = ENOTDIR;
    retval = -1;
    break;
   }
  }
  else if (mkdir(path, last ? omode : S_IRWXU | S_IRWXG | S_IRWXO) < 0)
  {
   retval = -1;
   break;
  }
  if (!last)
   *p = '/';
 }


 (void) umask(oumask);

 return retval;
}
