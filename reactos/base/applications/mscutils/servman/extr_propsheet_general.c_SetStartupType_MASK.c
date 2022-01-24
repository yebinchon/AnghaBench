#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int dwStartType; } ;
typedef  scalar_t__ LPWSTR ;
typedef  TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_START_TYPE ; 
 scalar_t__ IDS_SERVICES_AUTO ; 
 scalar_t__ IDS_SERVICES_DIS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ProcessHeap ; 
#define  SERVICE_AUTO_START 130 
#define  SERVICE_DEMAND_START 129 
#define  SERVICE_DISABLED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static VOID
FUNC6(LPWSTR lpServiceName,
               HWND hwndDlg)
{
    HWND hList;
    LPQUERY_SERVICE_CONFIG pServiceConfig;
    LPWSTR lpBuf;
    DWORD StartUp = 0;
    UINT i;

    hList = FUNC1(hwndDlg, IDC_START_TYPE);

    for (i = IDS_SERVICES_AUTO; i <= IDS_SERVICES_DIS; i++)
    {
        if (FUNC0(&lpBuf,
                               hInstance,
                               i))
        {
            FUNC5(hList,
                         CB_ADDSTRING,
                         0,
                         (LPARAM)lpBuf);
            FUNC4(lpBuf);
        }
    }

    pServiceConfig = FUNC2(lpServiceName);

    if (pServiceConfig)
    {
        switch (pServiceConfig->dwStartType)
        {
            case SERVICE_AUTO_START:   StartUp = 0; break;
            case SERVICE_DEMAND_START: StartUp = 1; break;
            case SERVICE_DISABLED:     StartUp = 2; break;
        }

        FUNC5(hList,
                     CB_SETCURSEL,
                     StartUp,
                     0);

        FUNC3(ProcessHeap,
                 0,
                 pServiceConfig);
    }
}