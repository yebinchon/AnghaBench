#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* ofnW; scalar_t__ ofnA; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__* PFD31_DATA ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FD31_OFN_PROP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(PFD31_DATA lfs)
{
    HWND hwnd;
    if (!lfs) return;
    hwnd = lfs->hwnd;
    FUNC2("destroying private allocation %p\n", lfs);

    /* if ofnW has been allocated, have to free everything in it */
    if (lfs->ofnA)
    {
        FUNC0(lfs->ofnW);
        FUNC3(lfs->ofnW);
    }
    FUNC3(lfs);
    FUNC1(hwnd, FD31_OFN_PROP);
}