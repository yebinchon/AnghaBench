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
struct TYPE_3__ {int /*<<< orphan*/  hDisplayPage; int /*<<< orphan*/  hGeneralPage; int /*<<< orphan*/  hTab; } ;
typedef  TYPE_1__* PINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC3(PINFO pInfo)
{
    switch (FUNC2(pInfo->hTab))
    {
        case 0: //General
            FUNC1(pInfo->hGeneralPage, SW_SHOW);
            FUNC1(pInfo->hDisplayPage, SW_HIDE);
            FUNC0(pInfo->hGeneralPage);
            break;
        case 1: //Display
            FUNC1(pInfo->hGeneralPage, SW_HIDE);
            FUNC1(pInfo->hDisplayPage, SW_SHOW);
            FUNC0(pInfo->hDisplayPage);
            break;
    }
}