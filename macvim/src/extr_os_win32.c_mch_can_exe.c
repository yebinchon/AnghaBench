
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int FALSE ;
 char NUL ;
 scalar_t__ STRLEN (char*) ;
 int TRUE ;
 int _MAX_PATH ;
 int copy_option_part (char**,char*,int,char*) ;
 scalar_t__ executable_exists (char*,char**) ;
 scalar_t__ gettail (char*) ;
 char* mch_getenv (char*) ;
 char* p_sh ;
 int * strstr (char*,char*) ;
 int * vim_strchr (scalar_t__,char) ;
 int vim_strncpy (char*,char*,int) ;

int
mch_can_exe(char_u *name, char_u **path)
{
    char_u buf[_MAX_PATH];
    int len = (int)STRLEN(name);
    char_u *p;

    if (len >= _MAX_PATH)
 return FALSE;



    if (vim_strchr(gettail(name), '.') != ((void*)0)
          || strstr((char *)gettail(p_sh), "sh") != ((void*)0))
 if (executable_exists((char *)name, path))
     return TRUE;




    vim_strncpy(buf, name, _MAX_PATH - 1);
    p = mch_getenv("PATHEXT");
    if (p == ((void*)0))
 p = (char_u *)".com;.exe;.bat;.cmd";
    while (*p)
    {
 if (p[0] == '.' && (p[1] == NUL || p[1] == ';'))
 {

     buf[len] = NUL;
     ++p;
     if (*p)
  ++p;
 }
 else
     copy_option_part(&p, buf + len, _MAX_PATH - len, ";");
 if (executable_exists((char *)buf, path))
     return TRUE;
    }
    return FALSE;
}
