#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int mask; int cx; int /*<<< orphan*/ * pszText; } ;
struct TYPE_4__ {int right; int left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ LVCOLUMNW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_DETAIL_LIST ; 
 int /*<<< orphan*/  IDS_FIELD ; 
 int /*<<< orphan*/  IDS_VALUE ; 
 int LVCF_TEXT ; 
 int LVCF_WIDTH ; 
 int /*<<< orphan*/  LVM_INSERTCOLUMNW ; 
 int /*<<< orphan*/  LVM_SETEXTENDEDLISTVIEWSTYLE ; 
 int /*<<< orphan*/  LVS_EX_FULLROWSELECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static void FUNC5(HWND hwnd)
{
    HWND lv = FUNC1(hwnd, IDC_DETAIL_LIST);
    RECT rc;
    WCHAR buf[MAX_STRING_LEN];
    LVCOLUMNW column;

    FUNC4(lv, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);
    FUNC2(lv, &rc);
    FUNC3(hInstance, IDS_FIELD, buf, FUNC0(buf));
    column.mask = LVCF_WIDTH | LVCF_TEXT;
    column.cx = (rc.right - rc.left) / 2 - 2;
    column.pszText = buf;
    FUNC4(lv, LVM_INSERTCOLUMNW, 0, (LPARAM)&column);
    FUNC3(hInstance, IDS_VALUE, buf, FUNC0(buf));
    FUNC4(lv, LVM_INSERTCOLUMNW, 1, (LPARAM)&column);
}