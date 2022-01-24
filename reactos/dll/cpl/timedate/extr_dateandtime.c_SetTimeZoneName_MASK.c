#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  DaylightName; int /*<<< orphan*/  StandardName; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_TIMEZONE ; 
 int /*<<< orphan*/  IDS_TIMEZONEINVALID ; 
 int /*<<< orphan*/  IDS_TIMEZONETEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TIME_ZONE_ID_DAYLIGHT 131 
#define  TIME_ZONE_ID_INVALID 130 
#define  TIME_ZONE_ID_STANDARD 129 
#define  TIME_ZONE_ID_UNKNOWN 128 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  hApplet ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC5(HWND hwnd)
{
    TIME_ZONE_INFORMATION TimeZoneInfo;
    WCHAR TimeZoneString[128];
    WCHAR TimeZoneText[128];
    WCHAR TimeZoneName[128];
    DWORD TimeZoneId;

    TimeZoneId = FUNC0(&TimeZoneInfo);

    FUNC1(hApplet, IDS_TIMEZONETEXT, TimeZoneText, 128);

    switch (TimeZoneId)
    {
        case TIME_ZONE_ID_STANDARD:
        case TIME_ZONE_ID_UNKNOWN:
            FUNC3(TimeZoneName, TimeZoneInfo.StandardName);
            break;

        case TIME_ZONE_ID_DAYLIGHT:
            FUNC3(TimeZoneName, TimeZoneInfo.DaylightName);
            break;

        case TIME_ZONE_ID_INVALID:
        default:
            FUNC1(hApplet, IDS_TIMEZONEINVALID, TimeZoneName, 128);
            break;
    }

    FUNC4(TimeZoneString, TimeZoneText, TimeZoneName);
    FUNC2(hwnd, IDC_TIMEZONE, WM_SETTEXT, 0, (LPARAM)TimeZoneString);
}