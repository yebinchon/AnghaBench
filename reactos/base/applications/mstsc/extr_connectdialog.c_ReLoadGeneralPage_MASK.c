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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  hGeneralPage; int /*<<< orphan*/  pRdpSettings; } ;
typedef  TYPE_1__* PINFO ;
typedef  scalar_t__ LPWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IDC_NAMEEDIT ; 
 int /*<<< orphan*/  IDC_SERVERCOMBO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static VOID
FUNC2(PINFO pInfo)
{
    LPWSTR lpText;

    /* add file address */
    lpText = FUNC0(pInfo->pRdpSettings,
                                   L"full address");
    if (lpText)
    {
        FUNC1(pInfo->hGeneralPage,
                        IDC_SERVERCOMBO,
                        lpText);
    }

    /* set user name */
    lpText = FUNC0(pInfo->pRdpSettings,
                                   L"username");
    if (lpText)
    {
        FUNC1(pInfo->hGeneralPage,
                        IDC_NAMEEDIT,
                        lpText);
    }
}