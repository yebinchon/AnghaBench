
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF_S (char*) ;
 int FALSE ;
 int F_NORMAL ;
 size_t OPERATION_FAILED ;
 int TRUE ;
 size_t UTIL_MISSING ;
 int cfgdir ;
 int create_dir (char*) ;
 int errno ;
 int free (char*) ;
 int getutil (char*) ;
 int * messages ;
 int mkpath (int ,char*,char*) ;
 int printwait (int ,int*) ;
 scalar_t__ spawn (char*,char*,char*,char*,int ) ;
 char* strdup (char*) ;
 int strerror (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static bool archive_mount(char *name, char *path, char *newpath, int *presel)
{
 char *dir, *cmd = "archivemount";
 size_t len;

 if (!getutil(cmd)) {
  printwait(messages[UTIL_MISSING], presel);
  return FALSE;
 }

 dir = strdup(name);
 if (!dir)
  return FALSE;

 len = strlen(dir);

 while (len > 1)
  if (dir[--len] == '.') {
   dir[len] = '\0';
   break;
  }

 DPRINTF_S(dir);


 mkpath(cfgdir, dir, newpath);
 free(dir);

 if (!create_dir(newpath)) {
  printwait(strerror(errno), presel);
  return FALSE;
 }


 DPRINTF_S(name);
 DPRINTF_S(newpath);
 if (spawn(cmd, name, newpath, path, F_NORMAL)) {
  printwait(messages[OPERATION_FAILED], presel);
  return FALSE;
 }

 return TRUE;
}
