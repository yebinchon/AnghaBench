
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* LPTSTR ;


 scalar_t__ _T (char) ;
 int _istspace (scalar_t__) ;
 scalar_t__ _totlower (scalar_t__) ;

__attribute__((used)) static VOID
partstrlwr (LPTSTR str)
{
    LPTSTR c = str;
    while (*c && !_istspace (*c) && *c != _T('='))
    {
        *c = _totlower (*c);
        c++;
    }
}
