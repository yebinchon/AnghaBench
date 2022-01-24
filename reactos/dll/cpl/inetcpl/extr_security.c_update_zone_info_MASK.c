#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t last_lv_index; int /*<<< orphan*/  hsec; TYPE_2__* zone_attr; } ;
typedef  TYPE_1__ secdlg_data ;
struct TYPE_6__ {int /*<<< orphan*/  szDisplayName; int /*<<< orphan*/ * szDescription; } ;
typedef  TYPE_2__ ZONEATTRIBUTES ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SEC_GROUP ; 
 int /*<<< orphan*/  IDC_SEC_ZONE_INFO ; 
 int /*<<< orphan*/  IDS_SEC_SETTINGS ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcpl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(secdlg_data *sd, DWORD lv_index)
{
    ZONEATTRIBUTES *za = &sd->zone_attr[lv_index];
    WCHAR name[MAX_PATH];
    DWORD len;

    FUNC3(FUNC1(sd->hsec, IDC_SEC_ZONE_INFO), za->szDescription);

    len = FUNC2(hcpl, IDS_SEC_SETTINGS, name, FUNC0(name));
    FUNC6(&name[len], za->szDisplayName, FUNC0(name) - len - 1);

    FUNC4("new title: %s\n", FUNC5(name));
    FUNC3(FUNC1(sd->hsec, IDC_SEC_GROUP), name);

    FUNC7(sd, lv_index, 0);
    sd->last_lv_index = lv_index;
}