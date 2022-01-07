
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char NUL ;
 int STRLEN (char*) ;
 int _chmod (char*,int ,int ) ;
 int _rtl_chmod (char*,int ,int ) ;

__attribute__((used)) static int
vim_chmod(char_u *name)
{
    char_u *p;
    int f;
    int c = 0;



    p = name + STRLEN(name);
    if (p > name)
 --p;
    if (p > name && (*p == '\\' || *p == '/') && p[-1] != ':')
    {
 c = *p;
 *p = NUL;
    }
    else
 p = ((void*)0);





    f = _chmod((char *)name, 0, 0);

    if (p != ((void*)0))
 *p = c;
    return f;
}
