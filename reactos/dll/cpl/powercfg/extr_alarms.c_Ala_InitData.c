
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int szMessage ;
typedef int WPARAM ;
struct TYPE_8__ {TYPE_2__* DischargePolicy; } ;
struct TYPE_9__ {TYPE_3__ user; } ;
struct TYPE_6__ {int EventCode; scalar_t__ Action; } ;
struct TYPE_7__ {TYPE_1__ PowerPolicy; int * BatteryLevel; scalar_t__ Enable; } ;
typedef int TCHAR ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOLEAN ;


 int BST_CHECKED ;
 int BST_UNCHECKED ;
 int CheckDlgButton (int ,int ,int ) ;
 size_t DISCHARGE_POLICY_CRITICAL ;
 size_t DISCHARGE_POLICY_LOW ;
 scalar_t__ FALSE ;
 int IDC_ALARM1 ;
 int IDC_ALARM2 ;
 int IDC_ALARMAKTION1 ;
 int IDC_ALARMAKTION2 ;
 int IDC_ALARMBAR1 ;
 int IDC_ALARMBAR2 ;
 int IDC_ALARMMSG1 ;
 int IDC_ALARMMSG2 ;
 int IDC_ALARMPROG1 ;
 int IDC_ALARMPROG2 ;
 int IDC_ALARMVALUE1 ;
 int IDC_ALARMVALUE2 ;
 scalar_t__ IDS_NOACTION ;
 scalar_t__ IDS_PERCENT ;
 scalar_t__ IDS_PowerActionNone1 ;
 scalar_t__ IDS_PowerActionNone2 ;
 scalar_t__ IDS_SOUND ;
 scalar_t__ IDS_TEXT ;
 int LOWORD (int ) ;
 scalar_t__ LoadString (int ,scalar_t__,int *,int) ;
 scalar_t__ MAKELONG (int ,int) ;
 int MAX_PATH ;
 int POWER_LEVEL_USER_NOTIFY_SOUND ;
 int POWER_LEVEL_USER_NOTIFY_TEXT ;
 int ReadGlobalPwrPolicy (TYPE_4__*) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemText (int ,int ,int *) ;
 int TBM_SETPOS ;
 int TBM_SETRANGE ;
 int TBM_SETTICFREQ ;
 scalar_t__ TRUE ;
 int * _T (char*) ;
 int _stprintf (int *,int *,int *,...) ;
 TYPE_4__ gGPP ;
 int hApplet ;
 int memset (int *,int,int) ;

__attribute__((used)) static BOOLEAN
Ala_InitData(HWND hwndDlg)
{
    TCHAR szAction[MAX_PATH];
    TCHAR szText[MAX_PATH];
    TCHAR szSound[MAX_PATH];
    TCHAR szMessage[MAX_PATH];
    TCHAR szTemp[MAX_PATH];
    TCHAR szBatteryLevel[MAX_PATH];
    TCHAR szProgram[MAX_PATH];

    if (!ReadGlobalPwrPolicy(&gGPP))
    {
        return FALSE;
    }

    if (gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].Enable)
    {
        CheckDlgButton(hwndDlg, IDC_ALARM1,
            gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].Enable ? BST_CHECKED : BST_UNCHECKED);

        if (LoadString(hApplet, IDS_PERCENT, szTemp, MAX_PATH))
        {
            _stprintf(szBatteryLevel, szTemp, gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].BatteryLevel);
            SetDlgItemText(hwndDlg, IDC_ALARMVALUE1, szBatteryLevel);
        }

        SendDlgItemMessage(hwndDlg, IDC_ALARMBAR1,
            TBM_SETRANGE,
            (WPARAM)TRUE,
            (LPARAM)MAKELONG(0, 100));
        SendDlgItemMessage(hwndDlg, IDC_ALARMBAR1,
            TBM_SETTICFREQ,
            (WPARAM)TRUE,
            (LPARAM)20);
        SendDlgItemMessage(hwndDlg, IDC_ALARMBAR1,
            TBM_SETPOS,
            (WPARAM)TRUE,
            (LPARAM)gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].BatteryLevel);

        if (LoadString(hApplet, gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.Action+IDS_PowerActionNone1, szAction, MAX_PATH))
        {
            SetDlgItemText(hwndDlg, IDC_ALARMAKTION1, szAction);
        }

        memset(szMessage, 0x0, sizeof(szMessage));
        LoadString(hApplet, IDS_NOACTION, szMessage, MAX_PATH);

        if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_TEXT)
        {
            if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (LoadString(hApplet, IDS_SOUND, szSound, MAX_PATH) && LoadString(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s, %s"),szSound,szText);
                }
            }
            else
            {
                if (LoadString(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s"),szText);
                }
            }
        }
        else
        {
            if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_LOW].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (LoadString(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s"),szSound);
                }
            }
        }

        SetDlgItemText(hwndDlg, IDC_ALARMMSG1, szMessage);

        if (LoadString(hApplet, IDS_PowerActionNone2, szProgram, MAX_PATH))
        {
            SetDlgItemText(hwndDlg, IDC_ALARMPROG1, szProgram);
        }
    }

    if (gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].Enable)
    {
        CheckDlgButton(hwndDlg, IDC_ALARM2,
            gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].Enable ? BST_CHECKED : BST_UNCHECKED);

        if (LoadString(hApplet, IDS_PERCENT, szTemp, MAX_PATH))
        {
            _stprintf(szBatteryLevel, szTemp, gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].BatteryLevel);
            SetDlgItemText(hwndDlg, IDC_ALARMVALUE2, szBatteryLevel);
        }

        SendDlgItemMessage(hwndDlg, IDC_ALARMBAR2,
            TBM_SETRANGE,
            (WPARAM)TRUE,
            (LPARAM)MAKELONG(0, 100));
        SendDlgItemMessage(hwndDlg, IDC_ALARMBAR2,
            TBM_SETPOS,
            (WPARAM)TRUE,
            (LPARAM)gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].BatteryLevel);

        if (LoadString(hApplet, gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.Action+IDS_PowerActionNone1, szAction, MAX_PATH))
        {
            SetDlgItemText(hwndDlg, IDC_ALARMAKTION2, szAction);
        }

        memset(szMessage, 0x0, sizeof(szMessage));
        LoadString(hApplet, IDS_NOACTION, szMessage, MAX_PATH);

        if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_TEXT)
        {
            if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (LoadString(hApplet, IDS_TEXT, szText, MAX_PATH) && LoadString(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s, %s"),szSound,szText);
                }
            }
            else
            {
                if (LoadString(hApplet, IDS_TEXT, szText, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s"),szText);
                }
            }
        }
        else
        {
            if (LOWORD(gGPP.user.DischargePolicy[DISCHARGE_POLICY_CRITICAL].PowerPolicy.EventCode) & POWER_LEVEL_USER_NOTIFY_SOUND)
            {
                if (LoadString(hApplet, IDS_SOUND, szSound, MAX_PATH))
                {
                    _stprintf(szMessage,_T("%s"),szSound);
                }
            }
        }

        SetDlgItemText(hwndDlg, IDC_ALARMMSG2, szMessage);

        if (LoadString(hApplet, IDS_PowerActionNone2, szProgram, MAX_PATH))
        {
            SetDlgItemText(hwndDlg, IDC_ALARMPROG2, szProgram);
        }
    }

    return TRUE;
}
