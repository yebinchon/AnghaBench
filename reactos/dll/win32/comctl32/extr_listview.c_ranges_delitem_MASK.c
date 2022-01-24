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
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  RANGES ;
typedef  TYPE_1__ RANGE ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__) ; 

__attribute__((used)) static inline BOOL FUNC1(RANGES ranges, INT nItem)
{
    RANGE range = { nItem, nItem + 1 };

    return FUNC0(ranges, range);
}