#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  hwnd; TYPE_2__* ofnW; TYPE_1__* ofnA; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* lpfnHook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* lpfnHook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_3__ FD31_DATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC3(const FD31_DATA *lfs, UINT wMsg, WPARAM wParam, LPARAM lParam)
{
    BOOL ret;

    if (lfs->ofnA)
    {
        FUNC0("Call hookA %p (%p, %04x, %08lx, %08lx)\n",
               lfs->ofnA->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
        ret = lfs->ofnA->lpfnHook(lfs->hwnd, wMsg, wParam, lParam);
        FUNC0("ret hookA %p (%p, %04x, %08lx, %08lx)\n",
               lfs->ofnA->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
        return ret;
    }

    FUNC0("Call hookW %p (%p, %04x, %08lx, %08lx)\n",
           lfs->ofnW->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
    ret = lfs->ofnW->lpfnHook(lfs->hwnd, wMsg, wParam, lParam);
    FUNC0("Ret hookW %p (%p, %04x, %08lx, %08lx)\n",
           lfs->ofnW->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
    return ret;
}