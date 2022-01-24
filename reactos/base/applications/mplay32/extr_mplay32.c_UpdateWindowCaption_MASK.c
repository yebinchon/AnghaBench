#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  szNewTitle ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_MODE_NOT_READY ; 
 int /*<<< orphan*/  IDS_MODE_OPEN ; 
 int /*<<< orphan*/  IDS_MODE_PAUSE ; 
 int /*<<< orphan*/  IDS_MODE_PLAY ; 
 int /*<<< orphan*/  IDS_MODE_RECORD ; 
 int /*<<< orphan*/  IDS_MODE_SEEK ; 
 int /*<<< orphan*/  IDS_MODE_STOP ; 
 int /*<<< orphan*/  IDS_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
#define  MCI_MODE_NOT_READY 134 
#define  MCI_MODE_OPEN 133 
#define  MCI_MODE_PAUSE 132 
#define  MCI_MODE_PLAY 131 
#define  MCI_MODE_RECORD 130 
#define  MCI_MODE_SEEK 129 
#define  MCI_MODE_STOP 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  hInstance ; 
 int /*<<< orphan*/ * szAppTitle ; 
 int /*<<< orphan*/  szCurrentFile ; 
 scalar_t__ wDeviceId ; 

void FUNC6(HWND hwnd)
{
    TCHAR szNewTitle[MAX_PATH + 3 + 256];
    TCHAR szStatus[128];

    if (wDeviceId == 0)
    {
        FUNC3(hwnd, szAppTitle);
        return;
    }

    switch (FUNC1(hwnd))
    {
        case MCI_MODE_PAUSE:
        {
            FUNC2(hInstance, IDS_MODE_PAUSE, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_STOP:
        {
            FUNC2(hInstance, IDS_MODE_STOP, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_PLAY:
        {
            FUNC2(hInstance, IDS_MODE_PLAY, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_OPEN:
        {
            FUNC2(hInstance, IDS_MODE_OPEN, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_RECORD:
        {
            FUNC2(hInstance, IDS_MODE_RECORD, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_SEEK:
        {
            FUNC2(hInstance, IDS_MODE_SEEK, szStatus, FUNC0(szStatus));
            break;
        }

        case MCI_MODE_NOT_READY:
        {
            FUNC2(hInstance, IDS_MODE_NOT_READY, szStatus, FUNC0(szStatus));
            break;
        }

        default:
        {
            FUNC2(hInstance, IDS_MODE_UNKNOWN, szStatus, FUNC0(szStatus));
        }
    }

    FUNC4(szNewTitle, sizeof(szNewTitle), FUNC5("%s - %s (%s)"), szAppTitle, szCurrentFile, szStatus);
    FUNC3(hwnd, szNewTitle);
}