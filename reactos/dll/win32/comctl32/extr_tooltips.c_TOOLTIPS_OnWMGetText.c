
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_3__ {int szTipText; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef char* LPWSTR ;


 int memcpy (char*,int ,int) ;
 int min (scalar_t__,int ) ;
 scalar_t__ strlenW (int ) ;

__attribute__((used)) static LRESULT
TOOLTIPS_OnWMGetText (const TOOLTIPS_INFO *infoPtr, WPARAM size, LPWSTR pszText)
{
    LRESULT res;

    if(!size)
        return 0;

    res = min(strlenW(infoPtr->szTipText)+1, size);
    memcpy(pszText, infoPtr->szTipText, res*sizeof(WCHAR));
    pszText[res-1] = '\0';
    return res-1;
}
