#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ uNumItem; int /*<<< orphan*/  items; } ;
typedef  int /*<<< orphan*/  TAB_ITEM ;
typedef  TYPE_1__ TAB_INFO ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline TAB_ITEM* FUNC2(const TAB_INFO *infoPtr, INT i)
{
    FUNC1(i >= 0 && i < infoPtr->uNumItem);
    return FUNC0(infoPtr->items, i);
}