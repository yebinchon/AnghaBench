#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int himages; int num_zones; int /*<<< orphan*/  zone_enumerator; int /*<<< orphan*/  zone_mgr; int /*<<< orphan*/ * zones; int /*<<< orphan*/ * levels; void* zone_attr; void* hlv; void* htb; int /*<<< orphan*/  hsec; } ;
typedef  TYPE_1__ secdlg_data ;
typedef  int /*<<< orphan*/  ZONEATTRIBUTES ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_SEC_LISTVIEW ; 
 int /*<<< orphan*/  IDC_SEC_TRACKBAR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int ILC_COLOR32 ; 
 int ILC_MASK ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  LVM_SETIMAGELIST ; 
 int LVSIL_NORMAL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NUM_TRACKBAR_POS ; 
 int /*<<< orphan*/  SM_CXICON ; 
 int /*<<< orphan*/  SM_CYICON ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TBM_SETTICFREQ ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int TRUE ; 
 scalar_t__ URLZONE_INTERNET ; 
 scalar_t__ URLZONE_INTRANET ; 
 scalar_t__ URLZONE_INVALID ; 
 scalar_t__ URLZONE_TRUSTED ; 
 scalar_t__ URLZONE_UNTRUSTED ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__*,scalar_t__) ; 
 void* FUNC13 (int) ; 
 TYPE_1__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static INT_PTR FUNC17(HWND hsec)
{
    secdlg_data *sd;
    HRESULT hr;
    DWORD current_zone;
    DWORD lv_index = 0;
    DWORD i;

    sd = FUNC14(sizeof(secdlg_data));
    FUNC10(hsec, DWLP_USER, (LONG_PTR) sd);
    if (!sd) {
        return FALSE;
    }

    sd->hsec = hsec;
    sd->hlv = FUNC3(hsec, IDC_SEC_LISTVIEW);
    sd->htb = FUNC3(hsec, IDC_SEC_TRACKBAR);

    FUNC1(sd->htb, FALSE); /* not changeable yet */

    FUNC11("(%p)   (data: %p, listview: %p, trackbar: %p)\n", hsec, sd, sd->hlv, sd->htb);

    FUNC9(sd->htb, TBM_SETRANGE, FALSE, FUNC7(0, NUM_TRACKBAR_POS - 1));
    FUNC9(sd->htb, TBM_SETTICFREQ, 1, 0 );

    /* Create the image lists for the listview */
    sd->himages = FUNC6(FUNC4(SM_CXICON), FUNC4(SM_CYICON), ILC_COLOR32 | ILC_MASK, 1, 1);

    FUNC11("using imagelist: %p\n", sd->himages);
    if (!sd->himages) {
        FUNC0("ImageList_Create failed!\n");
        return FALSE;
    }
    FUNC9(sd->hlv, LVM_SETIMAGELIST, LVSIL_NORMAL, (LPARAM)sd->himages);

    hr = FUNC15(sd);
    if (FUNC2(hr)) {
        FUNC0("got 0x%x\n", hr);
        FUNC16(sd);
        return FALSE;
    }

    FUNC11("found %d zones\n", sd->num_zones);

    /* remember ZONEATTRIBUTES for a listview entry */
    sd->zone_attr = FUNC13(sizeof(ZONEATTRIBUTES) * sd->num_zones);
    if (!sd->zone_attr) {
        FUNC16(sd);
        return FALSE;
    }

    /* remember zone number and current security level for a listview entry */
    sd->zones = FUNC13((sizeof(DWORD) + sizeof(DWORD)) * sd->num_zones);
    if (!sd->zones) {
        FUNC16(sd);
        return FALSE;
    }
    sd->levels = &sd->zones[sd->num_zones];

    /* use the same order as visible with native inetcpl.cpl */
    FUNC12(sd, &lv_index, URLZONE_INTERNET);
    FUNC12(sd, &lv_index, URLZONE_INTRANET);
    FUNC12(sd, &lv_index, URLZONE_TRUSTED);
    FUNC12(sd, &lv_index, URLZONE_UNTRUSTED);

    for (i = 0; i < sd->num_zones; i++)
    {
        hr = FUNC5(sd->zone_mgr, sd->zone_enumerator, i, &current_zone);
        if (FUNC8(hr) && (current_zone != (DWORD)URLZONE_INVALID)) {
            if (!current_zone || (current_zone > URLZONE_UNTRUSTED)) {
                FUNC12(sd, &lv_index, current_zone);
            }
        }
    }
    return TRUE;
}