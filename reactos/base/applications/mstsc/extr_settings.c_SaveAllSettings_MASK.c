#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int /*<<< orphan*/  pRdpSettings; int /*<<< orphan*/  hGeneralPage; int /*<<< orphan*/  hDisplayPage; TYPE_2__* DisplayDeviceList; } ;
struct TYPE_6__ {TYPE_1__* Resolutions; } ;
struct TYPE_5__ {int dmPelsWidth; int dmPelsHeight; } ;
typedef  TYPE_3__* PINFO ;
typedef  int INT ;

/* Variables and functions */
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IDC_BPPCOMBO ; 
 int /*<<< orphan*/  IDC_GEOSLIDER ; 
 int /*<<< orphan*/  IDC_NAMEEDIT ; 
 int /*<<< orphan*/  IDC_SERVERCOMBO ; 
 int MAXVALUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TBM_GETPOS ; 
 int /*<<< orphan*/  TBM_GETRANGEMAX ; 

VOID
FUNC5(PINFO pInfo)
{
    INT ret;
    WCHAR szValue[MAXVALUE];

    /* server */
    if (FUNC0(pInfo->hGeneralPage,
                       IDC_SERVERCOMBO,
                       szValue,
                       MAXVALUE))
    {
        FUNC4(pInfo->pRdpSettings,
                            L"full address",
                            szValue);
    }

    /* resolution and fullscreen*/
    ret = FUNC1(pInfo->hDisplayPage,
                             IDC_GEOSLIDER,
                             TBM_GETPOS,
                             0,
                             0);
    if (ret != -1)
    {
        FUNC3(pInfo->pRdpSettings,
                             L"screen mode id",
                             (ret == FUNC2(pInfo->hDisplayPage, IDC_GEOSLIDER, TBM_GETRANGEMAX, 0, 0)) ? 2 : 1);
        FUNC3(pInfo->pRdpSettings,
                             L"desktopwidth",
                             pInfo->DisplayDeviceList->Resolutions[ret].dmPelsWidth);
        FUNC3(pInfo->pRdpSettings,
                             L"desktopheight",
                             pInfo->DisplayDeviceList->Resolutions[ret].dmPelsHeight);
    }

    /* bpp */
    ret = FUNC1(pInfo->hDisplayPage,
                             IDC_BPPCOMBO,
                             CB_GETCURSEL,
                             0,
                             0);
    if (ret != CB_ERR)
    {
        ret = FUNC1(pInfo->hDisplayPage,
                                 IDC_BPPCOMBO,
                                 CB_GETITEMDATA,
                                 ret,
                                 0);
        if (ret != CB_ERR)
        {
            FUNC3(pInfo->pRdpSettings,
                                 L"session bpp",
                                 ret);
        }
    }

    /* user name */
    if (FUNC0(pInfo->hGeneralPage,
                       IDC_NAMEEDIT,
                       szValue,
                       MAXVALUE))
    {
        FUNC4(pInfo->pRdpSettings,
                            L"username",
                            szValue);
    }
}