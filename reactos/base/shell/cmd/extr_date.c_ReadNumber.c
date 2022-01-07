
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWORD ;
typedef int* LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _T (int ) ;
 scalar_t__ _istdigit (int) ;

__attribute__((used)) static BOOL
ReadNumber (LPTSTR *s, LPWORD lpwValue)
{
    if (_istdigit (**s))
    {
        while (_istdigit (**s))
        {
            *lpwValue = *lpwValue * 10 + **s - _T('0');
            (*s)++;
        }
        return TRUE;
    }
    return FALSE;
}
