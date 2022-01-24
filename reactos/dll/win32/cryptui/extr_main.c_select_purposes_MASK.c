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
typedef  int PurposeSelection ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_ADD_PURPOSE ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_USAGES ; 
#define  PurposeDisableAll 130 
#define  PurposeEnableAll 129 
#define  PurposeEnableSelected 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HWND hwnd, PurposeSelection selection)
{
    HWND lv = FUNC1(hwnd, IDC_CERTIFICATE_USAGES);

    switch (selection)
    {
    case PurposeEnableAll:
    case PurposeDisableAll:
        FUNC0(lv, FALSE);
        FUNC2(lv, FALSE);
        FUNC0(FUNC1(hwnd, IDC_ADD_PURPOSE), FALSE);
        break;
    case PurposeEnableSelected:
        FUNC0(lv, TRUE);
        FUNC2(lv, TRUE);
        FUNC0(FUNC1(hwnd, IDC_ADD_PURPOSE), TRUE);
    }
}