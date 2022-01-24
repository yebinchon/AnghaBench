#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  minHeight; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CYSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL
FUNC3 (STATUS_INFO *infoPtr, INT height)
{
    DWORD ysize = FUNC0(SM_CYSIZE);
    if (ysize & 1) ysize--;
    infoPtr->minHeight = FUNC2(height, ysize);
    infoPtr->height = FUNC1(infoPtr);
    /* like native, don't resize the control */
    return TRUE;
}