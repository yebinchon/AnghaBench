#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* dlgw; } ;
struct TYPE_9__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef  TYPE_3__ pagesetup_data ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; int wDefault; } ;
struct TYPE_7__ {int /*<<< orphan*/  hDevNames; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  TYPE_4__ DEVNAMES ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(pagesetup_data *data, LPCWSTR drv, LPCWSTR devname, LPCWSTR port)
{
    DEVNAMES *dn;
    WCHAR def[256];
    DWORD len = sizeof(DEVNAMES), drv_len, dev_len, port_len;

    if(data->unicode)
    {
        drv_len  = (FUNC9(drv) + 1) * sizeof(WCHAR);
        dev_len  = (FUNC9(devname) + 1) * sizeof(WCHAR);
        port_len = (FUNC9(port) + 1) * sizeof(WCHAR);
    }
    else
    {
        drv_len = FUNC6(CP_ACP, 0, drv, -1, NULL, 0, NULL, NULL);
        dev_len = FUNC6(CP_ACP, 0, devname, -1, NULL, 0, NULL, NULL);
        port_len = FUNC6(CP_ACP, 0, port, -1, NULL, 0, NULL, NULL);
    }
    len += drv_len + dev_len + port_len;

    if(data->u.dlgw->hDevNames)
        data->u.dlgw->hDevNames = FUNC4(data->u.dlgw->hDevNames, len, GMEM_MOVEABLE);
    else
        data->u.dlgw->hDevNames = FUNC2(GMEM_MOVEABLE, len);

    dn = FUNC3(data->u.dlgw->hDevNames);

    if(data->unicode)
    {
        WCHAR *ptr = (WCHAR *)(dn + 1);
        len = sizeof(DEVNAMES) / sizeof(WCHAR);
        dn->wDriverOffset = len;
        FUNC8(ptr, drv);
        ptr += drv_len / sizeof(WCHAR);
        len += drv_len / sizeof(WCHAR);
        dn->wDeviceOffset = len;
        FUNC8(ptr, devname);
        ptr += dev_len / sizeof(WCHAR);
        len += dev_len / sizeof(WCHAR);
        dn->wOutputOffset = len;
        FUNC8(ptr, port);
    }
    else
    {
        char *ptr = (char *)(dn + 1);
        len = sizeof(DEVNAMES);
        dn->wDriverOffset = len;
        FUNC6(CP_ACP, 0, drv, -1, ptr, drv_len, NULL, NULL);
        ptr += drv_len;
        len += drv_len;
        dn->wDeviceOffset = len;
        FUNC6(CP_ACP, 0, devname, -1, ptr, dev_len, NULL, NULL);
        ptr += dev_len;
        len += dev_len;
        dn->wOutputOffset = len;
        FUNC6(CP_ACP, 0, port, -1, ptr, port_len, NULL, NULL);
    }

    dn->wDefault = 0;
    len = FUNC0(def);
    FUNC1(def, &len);
    if(!FUNC7(def, devname))
        dn->wDefault = 1;

    FUNC5(data->u.dlgw->hDevNames);
}