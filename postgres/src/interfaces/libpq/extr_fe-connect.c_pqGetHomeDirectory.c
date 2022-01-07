
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmppath ;
struct passwd {int pw_dir; } ;
typedef int pwdbuf ;


 int BUFSIZ ;
 int CSIDL_APPDATA ;
 int MAX_PATH ;
 scalar_t__ SHGetFolderPath (int *,int ,int *,int ,char*) ;
 scalar_t__ S_OK ;
 int ZeroMemory (char*,int) ;
 int geteuid () ;
 int pqGetpwuid (int ,struct passwd*,char*,int,struct passwd**) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (char*,int ,int) ;

bool
pqGetHomeDirectory(char *buf, int bufsize)
{

 char pwdbuf[BUFSIZ];
 struct passwd pwdstr;
 struct passwd *pwd = ((void*)0);

 (void) pqGetpwuid(geteuid(), &pwdstr, pwdbuf, sizeof(pwdbuf), &pwd);
 if (pwd == ((void*)0))
  return 0;
 strlcpy(buf, pwd->pw_dir, bufsize);
 return 1;
}
