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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  IDC_LIST_STAT ; 
 int /*<<< orphan*/  IDC_TEXT_NITEMS ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(HWND hWnd, TCHAR *buffer)
{
    unsigned int n = FUNC0(hWnd, IDC_LIST_STAT, LB_GETCOUNT, 0, 0); 

    FUNC3(buffer, FUNC2("n=%u"), n);
    FUNC1(hWnd, IDC_TEXT_NITEMS, buffer);
}