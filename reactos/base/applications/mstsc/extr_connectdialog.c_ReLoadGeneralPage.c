
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int hGeneralPage; int pRdpSettings; } ;
typedef TYPE_1__* PINFO ;
typedef scalar_t__ LPWSTR ;


 scalar_t__ GetStringFromSettings (int ,char*) ;
 int IDC_NAMEEDIT ;
 int IDC_SERVERCOMBO ;
 int SetDlgItemTextW (int ,int ,scalar_t__) ;

__attribute__((used)) static VOID
ReLoadGeneralPage(PINFO pInfo)
{
    LPWSTR lpText;


    lpText = GetStringFromSettings(pInfo->pRdpSettings,
                                   L"full address");
    if (lpText)
    {
        SetDlgItemTextW(pInfo->hGeneralPage,
                        IDC_SERVERCOMBO,
                        lpText);
    }


    lpText = GetStringFromSettings(pInfo->pRdpSettings,
                                   L"username");
    if (lpText)
    {
        SetDlgItemTextW(pInfo->hGeneralPage,
                        IDC_NAMEEDIT,
                        lpText);
    }
}
