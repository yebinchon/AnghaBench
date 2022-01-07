
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path_exe ;


 int MAXPGPATH ;
 int R_OK ;
 int S_IRUSR ;
 int S_ISREG (int) ;
 int S_IXUSR ;
 int X_OK ;
 scalar_t__ access (char const*,int ) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcat (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
validate_exec(const char *path)
{
 struct stat buf;
 int is_r;
 int is_x;
 if (stat(path, &buf) < 0)
  return -1;

 if (!S_ISREG(buf.st_mode))
  return -1;






 is_r = (access(path, R_OK) == 0);
 is_x = (access(path, X_OK) == 0);




 return is_x ? (is_r ? 0 : -2) : -1;
}
