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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PROP_BUTTON ; 
 int /*<<< orphan*/  IDC_REMOVE_BUTTON ; 
 int /*<<< orphan*/  IDC_SET_DEFAULT ; 

__attribute__((used)) static VOID
FUNC2(HWND hwndDlg, BOOL bIsEnabled)
{
    FUNC0(FUNC1(hwndDlg, IDC_REMOVE_BUTTON), bIsEnabled);
    FUNC0(FUNC1(hwndDlg, IDC_PROP_BUTTON), bIsEnabled);
    FUNC0(FUNC1(hwndDlg, IDC_SET_DEFAULT), bIsEnabled);
}