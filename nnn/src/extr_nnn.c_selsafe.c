
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int FALSE ;
 size_t NONE_SELECTED ;
 int R_OK ;
 int TRUE ;
 int W_OK ;
 int access (int ,int) ;
 scalar_t__ errno ;
 int g_selpath ;
 char** messages ;
 int printmsg (char*) ;
 int printwarn (int *) ;

__attribute__((used)) static bool selsafe(void)
{

 if (!g_selpath) {
  printmsg("selection file not found");
  return FALSE;
 }


 if (access(g_selpath, R_OK | W_OK) == -1) {
  errno == ENOENT ? printmsg(messages[NONE_SELECTED]) : printwarn(((void*)0));
  return FALSE;
 }

 return TRUE;
}
