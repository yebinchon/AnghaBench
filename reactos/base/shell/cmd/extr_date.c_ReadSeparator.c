
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ cDateSeparator ;

__attribute__((used)) static BOOL
ReadSeparator (LPTSTR *s)
{
    if (**s == _T('/') || **s == _T('-') || **s == cDateSeparator)
    {
        (*s)++;
        return TRUE;
    }
    return FALSE;
}
