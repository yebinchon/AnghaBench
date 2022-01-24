#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szMessage ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_8__ {TYPE_2__* DischargePolicy; } ;
struct TYPE_9__ {TYPE_3__ user; } ;
struct TYPE_6__ {int /*<<< orphan*/  EventCode; scalar_t__ Action; } ;
struct TYPE_7__ {TYPE_1__ PowerPolicy; int /*<<< orphan*/ * BatteryLevel; scalar_t__ Enable; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  BST_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t DISCHARGE_POLICY_CRITICAL ; 
 size_t DISCHARGE_POLICY_LOW ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IDC_ALARM1 ; 
 int /*<<< orphan*/  IDC_ALARM2 ; 
 int /*<<< orphan*/  IDC_ALARMAKTION1 ; 
 int /*<<< orphan*/  IDC_ALARMAKTION2 ; 
 int /*<<< orphan*/  IDC_ALARMBAR1 ; 
 int /*<<< orphan*/  IDC_ALARMBAR2 ; 
 int /*<<< orphan*/  IDC_ALARMMSG1 ; 
 int /*<<< orphan*/  IDC_ALARMMSG2 ; 
 int /*<<< orphan*/  IDC_ALARMPROG1 ; 
 int /*<<< orphan*/  IDC_ALARMPROG2 ; 
 int /*<<< orphan*/  IDC_ALARMVALUE1 ; 
 int /*<<< orphan*/  IDC_ALARMVALUE2 ; 
 scalar_t__ IDS_NOACTION ; 
 scalar_t__ IDS_PERCENT ; 
 scalar_t__ IDS_PowerActionNone1 ; 
 scalar_t__ IDS_PowerActionNone2 ; 
 scalar_t__ IDS_SOUND ; 
 scalar_t__ IDS_TEXT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int MAX_PATH ; 
 int POWER_LEVEL_USER_NOTIFY_SOUND ; 
 int POWER_LEVEL_USER_NOTIFY_TEXT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TBM_SETTICFREQ ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 TYPE_4__ gGPP ; 
 int /*<<< orphan*/  hApplet ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static BOOLEAN
FUNC10(HWND hwndDlg)
{
    TCHAR szAction[MAX_PATH];
    TCHAR szText[MAX_PATH];
    TCHAR szSound[MAX_PATH];
    TCHAR szMessage[MAX_PATH];
    TCHAR szTemp[MAX_PATH];
    TCHAR szBatteryLevel[MAX_PATH];
    TCHAR szProgram[MAX_PATH];

    if (!FUNC4(&gGPP))
    {
        return FALSE;
    }

    if (gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].Enable)
    {
        FUNC0(hwndDlg, IDC_ALARM1,
            gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].Enable ? BST_CHECKED : BST_UNCHECKED);

        if (FUNC2(hApplet, IDS_PERCENT, szTemp, MAX_PATH))
        {
            FUNC8(szBatteryLevel, szTemp, gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].BatteryLevel);
            FUNC6(hwndDlg, IDC_ALARMVALUE1, szBatteryLevel);
        }

        FUNC5(hwndDlg, IDC_ALARMBAR1,
            TBM_SETRANGE,
            (WPARAM)TRUE,
            (LPARAM)FUNC3(0, 100));
        FUNC5(hwndDlg, IDC_ALARMBAR1,
            TBM_SETTICFREQ,
            (WPARAM)TRUE,
            (LPARAM)20);
        FUNC5(hwndDlg, IDC_ALARMBAR1,
            TBM_SETPOS,
            (WPARAM)TRUE,
            (LPARAM)gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].BatteryLevel);

        if (FUNC2(hApplet, gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.Action+IDS_PowerActionNone1, szAction, MAX_PATH))
        {
            FUNC6(hwndDlg, IDC_ALARMAKTION1, szAction);
        }

        FUNC9(szMessage, 0x0, sizeof(szMessage));
        FUNC2(hApplet, IDS_NOACTION, szMessage, MAX_PATH);

        if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_TEXT)
        {
            if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (FUNC2(hApplet, IDS_SOUND, szSound, MAX_PATH) && FUNC2(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s, %s"),szSound,szText);
                }
            }
            else
            {
                if (FUNC2(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s"),szText);
                }
            }
        }
        else
        {
            if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (FUNC2(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s"),szSound);
                }
            }
        }

        FUNC6(hwndDlg, IDC_ALARMMSG1, szMessage);

        if (FUNC2(hApplet, IDS_PowerActionNone2, szProgram, MAX_PATH))
        {
            FUNC6(hwndDlg, IDC_ALARMPROG1, szProgram);
        }
    }

    if (gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].Enable)
    {
        FUNC0(hwndDlg, IDC_ALARM2,
            gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].Enable ? BST_CHECKED : BST_UNCHECKED);

        if (FUNC2(hApplet, IDS_PERCENT, szTemp, MAX_PATH))
        {
            FUNC8(szBatteryLevel, szTemp, gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].BatteryLevel);
            FUNC6(hwndDlg, IDC_ALARMVALUE2, szBatteryLevel);
        }

        FUNC5(hwndDlg, IDC_ALARMBAR2,
            TBM_SETRANGE,
            (WPARAM)TRUE,
            (LPARAM)FUNC3(0, 100));
        FUNC5(hwndDlg, IDC_ALARMBAR2,
            TBM_SETPOS,
            (WPARAM)TRUE,
            (LPARAM)gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].BatteryLevel);

        if (FUNC2(hApplet, gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.Action+IDS_PowerActionNone1, szAction, MAX_PATH))
        {
            FUNC6(hwndDlg, IDC_ALARMAKTION2, szAction);
        }

        FUNC9(szMessage, 0x0, sizeof(szMessage));
        FUNC2(hApplet, IDS_NOACTION, szMessage, MAX_PATH);

        if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_TEXT)
        {
            if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (FUNC2(hApplet, IDS_TEXT, szText, MAX_PATH) && FUNC2(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s, %s"),szSound,szText);
                }
            }
            else
            {
                if (FUNC2(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s"),szText);
                }
            }
        }
        else
        {
            if (FUNC1(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (FUNC2(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    FUNC8(szMessage,FUNC7("%s"),szSound);
                }
            }
        }

        FUNC6(hwndDlg, IDC_ALARMMSG2, szMessage);

        if (FUNC2(hApplet, IDS_PowerActionNone2, szProgram, MAX_PATH))
        {
            FUNC6(hwndDlg, IDC_ALARMPROG2, szProgram);
        }
    }

    return TRUE;
}