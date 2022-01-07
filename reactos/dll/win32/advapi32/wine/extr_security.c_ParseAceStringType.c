
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int value; scalar_t__ wstr; } ;
typedef char* LPCWSTR ;
typedef int BYTE ;
typedef TYPE_1__ ACEFLAG ;


 TYPE_1__* AceType ;
 int strlenW (scalar_t__) ;
 scalar_t__ strncmpW (scalar_t__,char*,int) ;

__attribute__((used)) static BYTE ParseAceStringType(LPCWSTR* StringAcl)
{
    UINT len = 0;
    LPCWSTR szAcl = *StringAcl;
    const ACEFLAG *lpaf = AceType;

    while (*szAcl == ' ')
        szAcl++;

    while (lpaf->wstr &&
        (len = strlenW(lpaf->wstr)) &&
        strncmpW(lpaf->wstr, szAcl, len))
        lpaf++;

    if (!lpaf->wstr)
        return 0;

    *StringAcl = szAcl + len;
    return lpaf->value;
}
