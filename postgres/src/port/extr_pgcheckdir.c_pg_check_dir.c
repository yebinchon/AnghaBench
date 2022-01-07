
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int ENOENT ;
 scalar_t__ closedir (int *) ;
 int errno ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (char*,char*) ;

int
pg_check_dir(const char *dir)
{
 int result = 1;
 DIR *chkdir;
 struct dirent *file;
 bool dot_found = 0;
 bool mount_found = 0;
 int readdir_errno;

 chkdir = opendir(dir);
 if (chkdir == ((void*)0))
  return (errno == ENOENT) ? 0 : -1;

 while (errno = 0, (file = readdir(chkdir)) != ((void*)0))
 {
  if (strcmp(".", file->d_name) == 0 ||
   strcmp("..", file->d_name) == 0)
  {

   continue;
  }


  else if (file->d_name[0] == '.')
  {
   dot_found = 1;
  }

  else if (strcmp("lost+found", file->d_name) == 0)
  {
   mount_found = 1;
  }

  else
  {
   result = 4;
   break;
  }
 }

 if (errno)
  result = -1;


 readdir_errno = errno;
 if (closedir(chkdir))
  result = -1;
 else
  errno = readdir_errno;


 if (result == 1 && mount_found)
  result = 3;


 if (result == 1 && dot_found)
  result = 2;

 return result;
}
