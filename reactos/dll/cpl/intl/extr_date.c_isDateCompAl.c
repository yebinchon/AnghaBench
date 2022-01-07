
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
isDateCompAl(WCHAR alpha)
{
    if ((alpha == L'y') || (alpha == L'M') || (alpha == L'd') || (alpha == L' '))
        return TRUE;
    else
        return FALSE;
}
