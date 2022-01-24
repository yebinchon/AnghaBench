#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_1__ ptLButtonDown; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ HEADER_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXDOUBLECLK ; 
 int /*<<< orphan*/  SM_CYDOUBLECLK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC2(const HEADER_INFO *infoPtr, const POINT *pt)
{
    /* Windows allows for a mouse movement before starting the drag. We use the
     * SM_CXDOUBLECLICK/SM_CYDOUBLECLICK as that distance.
     */
    return (FUNC1(infoPtr->ptLButtonDown.x - pt->x)>FUNC0(SM_CXDOUBLECLK) ||
            FUNC1(infoPtr->ptLButtonDown.y - pt->y)>FUNC0(SM_CYDOUBLECLK));
}