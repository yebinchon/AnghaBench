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
typedef  TYPE_1__* jsonsl_t ;
struct TYPE_3__ {scalar_t__ jpr_count; int /*<<< orphan*/ * jpr_root; int /*<<< orphan*/ * jprs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(jsonsl_t jsn)
{
    if (jsn->jpr_count == 0) {
        return;
    }

    FUNC0(jsn->jpr_root);
    FUNC0(jsn->jprs);
    jsn->jprs = NULL;
    jsn->jpr_root = NULL;
    jsn->jpr_count = 0;
}