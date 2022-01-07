
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 int FALSE ;
 int F_MULTI ;
 int F_NORMAL ;
 size_t OPERATION_FAILED ;
 int TRUE ;
 size_t UTIL_MISSING ;
 int cfgdir ;
 int create_dir (char*) ;
 int errno ;
 char* getenv (char*) ;
 int getutil (char*) ;
 int * messages ;
 int mkpath (int ,char*,char*) ;
 int printwait (int ,int*) ;
 scalar_t__ spawn (char*,char*,char*,int *,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;
 char* xreadline (int *,char*) ;

__attribute__((used)) static bool sshfs_mount(char *newpath, int *presel)
{
 uchar flag = F_NORMAL;
 int r;
 char *tmp, *env, *cmd = "sshfs";

 if (!getutil(cmd)) {
  printwait(messages[UTIL_MISSING], presel);
  return FALSE;
 }

 tmp = xreadline(((void*)0), "host: ");
 if (!tmp[0])
  return FALSE;


 mkpath(cfgdir, tmp, newpath);
 if (!create_dir(newpath)) {
  printwait(strerror(errno), presel);
  return FALSE;
 }


 r = strlen(tmp);
 tmp[r] = ':';
 tmp[r + 1] = '\0';

 env = getenv("NNN_SSHFS_OPTS");
 if (env)
  flag |= F_MULTI;
 else
  env = cmd;


 if (spawn(env, tmp, newpath, ((void*)0), flag)) {
  printwait(messages[OPERATION_FAILED], presel);
  return FALSE;
 }

 return TRUE;
}
