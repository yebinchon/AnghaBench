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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_GETCHECK ; 
 scalar_t__ BST_CHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_AUTOSYNC ; 
 int /*<<< orphan*/  IDC_NEXTSYNC ; 
 int /*<<< orphan*/  IDC_SERVERLIST ; 
 int /*<<< orphan*/  IDC_SERVERTEXT ; 
 int /*<<< orphan*/  IDC_SUCSYNC ; 
 int /*<<< orphan*/  IDC_UPDATEBUTTON ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static VOID
FUNC3(HWND hwnd)
{
    BOOL bChecked;
    UINT uCheck;

    uCheck = (UINT)FUNC2(hwnd, IDC_AUTOSYNC, BM_GETCHECK, 0, 0);
    bChecked = (uCheck == BST_CHECKED) ? TRUE : FALSE;

    FUNC0(FUNC1(hwnd, IDC_SERVERTEXT), bChecked);
    FUNC0(FUNC1(hwnd, IDC_SERVERLIST), bChecked);
    FUNC0(FUNC1(hwnd, IDC_UPDATEBUTTON), bChecked);
    FUNC0(FUNC1(hwnd, IDC_SUCSYNC), bChecked);
    FUNC0(FUNC1(hwnd, IDC_NEXTSYNC), bChecked);
}