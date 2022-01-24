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
struct TYPE_3__ {int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  tszName; int /*<<< orphan*/  dwType; int /*<<< orphan*/  dwOfs; int /*<<< orphan*/  guidType; } ;
typedef  TYPE_1__ DIDEVICEOBJECTINSTANCEA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(const DIDEVICEOBJECTINSTANCEA *ddoi) {
    FUNC0("    - enumerating : %s ('%s') - %2d - 0x%08x - %s - 0x%x\n",
        FUNC2(&ddoi->guidType), FUNC1(&ddoi->guidType), ddoi->dwOfs, ddoi->dwType, ddoi->tszName, ddoi->dwFlags);
}