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
typedef  scalar_t__ HTREEITEM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

BOOL FUNC2(HWND hwndTV, HTREEITEM hItem)
{
    if (!hItem) hItem = FUNC1(hwndTV);
    if (!hItem) return FALSE;
    return FUNC0(hwndTV, hItem);
}