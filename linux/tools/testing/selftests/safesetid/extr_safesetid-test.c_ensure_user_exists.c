
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_name; int pw_uid; char* pw_gecos; char* pw_dir; char* pw_shell; } ;
typedef int p ;
typedef int FILE ;


 int SEEK_END ;
 int die (char*) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int * getpwuid (int) ;
 int memset (struct passwd*,int,int) ;
 int putpwent (struct passwd*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void ensure_user_exists(uid_t uid)
{
 struct passwd p;

 FILE *fd;
 char name_str[10];

 if (getpwuid(uid) == ((void*)0)) {
  memset(&p,0x00,sizeof(p));
  fd=fopen("/etc/passwd","a");
  if (fd == ((void*)0))
   die("couldn't open file\n");
  if (fseek(fd, 0, SEEK_END))
   die("couldn't fseek\n");
  snprintf(name_str, 10, "%d", uid);
  p.pw_name=name_str;
  p.pw_uid=uid;
  p.pw_gecos="Test account";
  p.pw_dir="/dev/null";
  p.pw_shell="/bin/false";
  int value = putpwent(&p,fd);
  if (value != 0)
   die("putpwent failed\n");
  if (fclose(fd))
   die("fclose failed\n");
 }
}
