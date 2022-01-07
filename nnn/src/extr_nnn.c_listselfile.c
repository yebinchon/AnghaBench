
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int CMD_LEN_MAX ;
 int FALSE ;
 int F_CLI ;
 int F_CONFIRM ;
 size_t SH_EXEC ;
 int TRUE ;
 int g_buf ;
 char* g_selpath ;
 int snprintf (int ,int ,char*,char*) ;
 int spawn (int ,int ,int *,int *,int) ;
 int stat (char*,struct stat*) ;
 int * utils ;

__attribute__((used)) static bool listselfile(void)
{
 struct stat sb;

 if (stat(g_selpath, &sb) == -1)
  return FALSE;


 if (!sb.st_size)
  return FALSE;

 snprintf(g_buf, CMD_LEN_MAX, "cat %s | tr \'\\0\' \'\\n\'", g_selpath);
 spawn(utils[SH_EXEC], g_buf, ((void*)0), ((void*)0), F_CLI | F_CONFIRM);

 return TRUE;
}
