
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 char* strdupA (char const*) ;

__attribute__((used)) static BOOL copy_string(char **dest, const char *source)
{
    if (!source)
    {
        *dest = ((void*)0);
        return TRUE;
    }

    *dest = strdupA(source);
    if (!dest) return FALSE;
    return TRUE;
}
