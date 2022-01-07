
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strlenW (char const*) ;

__attribute__((used)) static BOOL is_overwrite_switch(const WCHAR *s)
{
    if (strlenW(s) > 2)
        return FALSE;

    if ((s[0] == '/' || s[0] == '-') && (s[1] == 'y' || s[1] == 'Y'))
        return TRUE;

    return FALSE;
}
