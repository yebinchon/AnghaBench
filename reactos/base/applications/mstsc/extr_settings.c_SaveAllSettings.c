
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_7__ {int pRdpSettings; int hGeneralPage; int hDisplayPage; TYPE_2__* DisplayDeviceList; } ;
struct TYPE_6__ {TYPE_1__* Resolutions; } ;
struct TYPE_5__ {int dmPelsWidth; int dmPelsHeight; } ;
typedef TYPE_3__* PINFO ;
typedef int INT ;


 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 scalar_t__ GetDlgItemText (int ,int ,int *,int) ;
 int IDC_BPPCOMBO ;
 int IDC_GEOSLIDER ;
 int IDC_NAMEEDIT ;
 int IDC_SERVERCOMBO ;
 int MAXVALUE ;
 int SendDlgItemMessage (int ,int ,int ,int,int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetIntegerToSettings (int ,char*,int) ;
 int SetStringToSettings (int ,char*,int *) ;
 int TBM_GETPOS ;
 int TBM_GETRANGEMAX ;

VOID
SaveAllSettings(PINFO pInfo)
{
    INT ret;
    WCHAR szValue[MAXVALUE];


    if (GetDlgItemText(pInfo->hGeneralPage,
                       IDC_SERVERCOMBO,
                       szValue,
                       MAXVALUE))
    {
        SetStringToSettings(pInfo->pRdpSettings,
                            L"full address",
                            szValue);
    }


    ret = SendDlgItemMessage(pInfo->hDisplayPage,
                             IDC_GEOSLIDER,
                             TBM_GETPOS,
                             0,
                             0);
    if (ret != -1)
    {
        SetIntegerToSettings(pInfo->pRdpSettings,
                             L"screen mode id",
                             (ret == SendDlgItemMessageW(pInfo->hDisplayPage, IDC_GEOSLIDER, TBM_GETRANGEMAX, 0, 0)) ? 2 : 1);
        SetIntegerToSettings(pInfo->pRdpSettings,
                             L"desktopwidth",
                             pInfo->DisplayDeviceList->Resolutions[ret].dmPelsWidth);
        SetIntegerToSettings(pInfo->pRdpSettings,
                             L"desktopheight",
                             pInfo->DisplayDeviceList->Resolutions[ret].dmPelsHeight);
    }


    ret = SendDlgItemMessage(pInfo->hDisplayPage,
                             IDC_BPPCOMBO,
                             CB_GETCURSEL,
                             0,
                             0);
    if (ret != CB_ERR)
    {
        ret = SendDlgItemMessage(pInfo->hDisplayPage,
                                 IDC_BPPCOMBO,
                                 CB_GETITEMDATA,
                                 ret,
                                 0);
        if (ret != CB_ERR)
        {
            SetIntegerToSettings(pInfo->pRdpSettings,
                                 L"session bpp",
                                 ret);
        }
    }


    if (GetDlgItemText(pInfo->hGeneralPage,
                       IDC_NAMEEDIT,
                       szValue,
                       MAXVALUE))
    {
        SetStringToSettings(pInfo->pRdpSettings,
                            L"username",
                            szValue);
    }
}
