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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ BST_CHECKED ; 
 int /*<<< orphan*/  FR_DOWN ; 
 int /*<<< orphan*/  FR_MATCHCASE ; 
 int /*<<< orphan*/  FR_WHOLEWORD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chx1 ; 
 int /*<<< orphan*/  chx2 ; 
 int /*<<< orphan*/  rad2 ; 

__attribute__((used)) static DWORD FUNC1(HWND hDlgWnd)
{
	DWORD flags = 0;
	if(FUNC0(hDlgWnd, rad2) == BST_CHECKED)
		flags |= FR_DOWN;
	if(FUNC0(hDlgWnd, chx1) == BST_CHECKED)
		flags |= FR_WHOLEWORD;
	if(FUNC0(hDlgWnd, chx2) == BST_CHECKED)
		flags |= FR_MATCHCASE;
        return flags;
}