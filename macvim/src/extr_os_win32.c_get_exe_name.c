
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int FALSE ;
 int * FullName_save (char*,int ) ;
 int GetModuleFileName (int *,char*,int) ;
 int MAX_ENV_PATH_LEN ;
 char NUL ;
 int STRCAT (char*,char*) ;
 int STRCPY (char*,char*) ;
 int STRLEN (char*) ;
 int * exe_name ;
 char* exe_path ;
 int * gettail_sep (int *) ;
 char* mch_getenv (char*) ;
 int vim_setenv (char*,char*) ;
 char* vim_strnsave (int *,int) ;

__attribute__((used)) static void
get_exe_name(void)
{



    char temp[8192];
    char_u *p;

    if (exe_name == ((void*)0))
    {

 GetModuleFileName(((void*)0), temp, 8192 - 1);
 if (*temp != NUL)
     exe_name = FullName_save((char_u *)temp, FALSE);
    }

    if (exe_path == ((void*)0) && exe_name != ((void*)0))
    {
 exe_path = vim_strnsave(exe_name,
         (int)(gettail_sep(exe_name) - exe_name));
 if (exe_path != ((void*)0))
 {



     p = mch_getenv("PATH");
     if (p == ((void*)0)
         || STRLEN(p) + STRLEN(exe_path) + 2 < 8192)
     {
  if (p == ((void*)0) || *p == NUL)
      temp[0] = NUL;
  else
  {
      STRCPY(temp, p);
      STRCAT(temp, ";");
  }
  STRCAT(temp, exe_path);
  vim_setenv((char_u *)"PATH", temp);
     }
 }
    }
}
