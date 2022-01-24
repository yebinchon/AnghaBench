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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hFreeLdrPage ; 
 int /*<<< orphan*/  hGeneralPage ; 
 int /*<<< orphan*/  hServicesPage ; 
 int /*<<< orphan*/  hStartupPage ; 
 int /*<<< orphan*/  hSystemPage ; 
 int /*<<< orphan*/  hTabWnd ; 
 int /*<<< orphan*/  hToolsPage ; 

void FUNC3(void)
{
    switch (FUNC2(hTabWnd)) {
    case 0: //General
        FUNC1(hGeneralPage, SW_SHOW);
        FUNC1(hSystemPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_HIDE);
        FUNC1(hServicesPage, SW_HIDE);
        FUNC1(hStartupPage, SW_HIDE);
        FUNC1(hToolsPage, SW_HIDE);
        FUNC0(hGeneralPage);
        break;
    case 1: //SYSTEM.INI
        FUNC1(hGeneralPage, SW_HIDE);
        FUNC1(hSystemPage, SW_SHOW);
        FUNC1(hToolsPage, SW_HIDE);
        FUNC1(hStartupPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_HIDE);
        FUNC1(hServicesPage, SW_HIDE);
        FUNC0(hSystemPage);
        break;
    case 2: //Freeldr
        FUNC1(hGeneralPage, SW_HIDE);
        FUNC1(hSystemPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_SHOW);
        FUNC1(hServicesPage, SW_HIDE);
        FUNC1(hStartupPage, SW_HIDE);
        FUNC1(hToolsPage, SW_HIDE);
        FUNC0(hFreeLdrPage);
        break;
    case 3: //Services
        FUNC1(hGeneralPage, SW_HIDE);
        FUNC1(hSystemPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_HIDE);
        FUNC1(hServicesPage, SW_SHOW);
        FUNC1(hStartupPage, SW_HIDE);
        FUNC1(hToolsPage, SW_HIDE);
        FUNC0(hServicesPage);
        break;
    case 4: //startup
        FUNC1(hGeneralPage, SW_HIDE);
        FUNC1(hSystemPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_HIDE);
        FUNC1(hServicesPage, SW_HIDE);
        FUNC1(hStartupPage, SW_SHOW);
        FUNC1(hToolsPage, SW_HIDE);
        FUNC0(hStartupPage);
        break;
    case 5: //Tools
        FUNC1(hGeneralPage, SW_HIDE);
        FUNC1(hSystemPage, SW_HIDE);
        FUNC1(hFreeLdrPage, SW_HIDE);
        FUNC1(hServicesPage, SW_HIDE);
        FUNC1(hStartupPage, SW_HIDE);
        FUNC1(hToolsPage, SW_SHOW);
        FUNC0(hToolsPage);
        break;
    }
}