#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  prnt ;
typedef  int /*<<< orphan*/  pagesetup_data ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_12__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; } ;
struct TYPE_11__ {int lStructSize; scalar_t__ hDevNames; scalar_t__ hDevMode; int /*<<< orphan*/  hwndOwner; scalar_t__ Flags; } ;
typedef  TYPE_1__ PRINTDLGW ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ DEVNAMES ;
typedef  TYPE_3__ DEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(HWND hDlg, pagesetup_data *data)
{
    PRINTDLGW prnt;
    LPWSTR drvname, devname, portname;
    DEVMODEW *tmp_dm, *dm;

    FUNC7(&prnt, 0, sizeof(prnt));
    prnt.lStructSize = sizeof(prnt);
    prnt.Flags     = 0;
    prnt.hwndOwner = hDlg;

    drvname = FUNC10(data);
    devname = FUNC9(data);
    portname = FUNC11(data);
    prnt.hDevNames = 0;
    FUNC4(&prnt.hDevNames, drvname, devname, portname);
    FUNC13(data, portname);
    FUNC13(data, devname);
    FUNC13(data, drvname);

    tmp_dm = FUNC8(data);
    prnt.hDevMode = FUNC0(GMEM_MOVEABLE, tmp_dm->dmSize + tmp_dm->dmDriverExtra);
    dm = FUNC2(prnt.hDevMode);
    FUNC6(dm, tmp_dm, tmp_dm->dmSize + tmp_dm->dmDriverExtra);
    FUNC3(prnt.hDevMode);
    FUNC14(data, tmp_dm);

    if (FUNC5(&prnt))
    {
        DEVMODEW *dm = FUNC2(prnt.hDevMode);
        DEVNAMES *dn = FUNC2(prnt.hDevNames);

        FUNC16(data, (WCHAR*)dn + dn->wDriverOffset,
                               (WCHAR*)dn + dn->wDeviceOffset, (WCHAR *)dn + dn->wOutputOffset);
        FUNC15(data, dm);
        FUNC3(prnt.hDevNames);
        FUNC3(prnt.hDevMode);
        FUNC12(hDlg, data);
    }

    FUNC1(prnt.hDevMode);
    FUNC1(prnt.hDevNames);

}