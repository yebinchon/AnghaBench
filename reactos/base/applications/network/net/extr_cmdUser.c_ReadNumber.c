
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PWSTR ;
typedef int* PWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ iswdigit (int) ;

__attribute__((used)) static
BOOL
ReadNumber(
    PWSTR *s,
    PWORD pwValue)
{
    if (!iswdigit(**s))
        return FALSE;

    while (iswdigit(**s))
    {
        *pwValue = *pwValue * 10 + **s - L'0';
        (*s)++;
    }

    return TRUE;
}
