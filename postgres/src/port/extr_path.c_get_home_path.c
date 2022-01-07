
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_dir; } ;
typedef int pwdbuf ;


 int BUFSIZ ;
 int MAXPGPATH ;
 char* getenv (char*) ;
 int geteuid () ;
 int pqGetpwuid (int ,struct passwd*,char*,int,struct passwd**) ;
 int snprintf (char*,int ,char*,char*) ;
 int strlcpy (char*,int ,int ) ;

bool
get_home_path(char *ret_path)
{

 char pwdbuf[BUFSIZ];
 struct passwd pwdstr;
 struct passwd *pwd = ((void*)0);

 (void) pqGetpwuid(geteuid(), &pwdstr, pwdbuf, sizeof(pwdbuf), &pwd);
 if (pwd == ((void*)0))
  return 0;
 strlcpy(ret_path, pwd->pw_dir, MAXPGPATH);
 return 1;
}
