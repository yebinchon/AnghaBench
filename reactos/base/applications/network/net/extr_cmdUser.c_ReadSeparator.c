
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
BOOL
ReadSeparator(
    PWSTR *s)
{
    if (**s == L'/' || **s == L'.')
    {
        (*s)++;
        return TRUE;
    }

    return FALSE;
}
