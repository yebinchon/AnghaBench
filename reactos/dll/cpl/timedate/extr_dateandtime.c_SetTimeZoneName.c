
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {int DaylightName; int StandardName; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int GetTimeZoneInformation (TYPE_1__*) ;
 int IDC_TIMEZONE ;
 int IDS_TIMEZONEINVALID ;
 int IDS_TIMEZONETEXT ;
 int LoadStringW (int ,int ,int *,int) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;




 int WM_SETTEXT ;
 int hApplet ;
 int wcscpy (int *,int ) ;
 int wsprintfW (int *,int *,int *) ;

__attribute__((used)) static VOID
SetTimeZoneName(HWND hwnd)
{
    TIME_ZONE_INFORMATION TimeZoneInfo;
    WCHAR TimeZoneString[128];
    WCHAR TimeZoneText[128];
    WCHAR TimeZoneName[128];
    DWORD TimeZoneId;

    TimeZoneId = GetTimeZoneInformation(&TimeZoneInfo);

    LoadStringW(hApplet, IDS_TIMEZONETEXT, TimeZoneText, 128);

    switch (TimeZoneId)
    {
        case 129:
        case 128:
            wcscpy(TimeZoneName, TimeZoneInfo.StandardName);
            break;

        case 131:
            wcscpy(TimeZoneName, TimeZoneInfo.DaylightName);
            break;

        case 130:
        default:
            LoadStringW(hApplet, IDS_TIMEZONEINVALID, TimeZoneName, 128);
            break;
    }

    wsprintfW(TimeZoneString, TimeZoneText, TimeZoneName);
    SendDlgItemMessageW(hwnd, IDC_TIMEZONE, WM_SETTEXT, 0, (LPARAM)TimeZoneString);
}
