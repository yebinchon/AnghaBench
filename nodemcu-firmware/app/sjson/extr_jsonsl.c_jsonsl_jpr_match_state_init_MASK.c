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
typedef  int /*<<< orphan*/  jsonsl_jpr_t ;
struct TYPE_3__ {size_t jpr_count; size_t* jpr_root; int levels_max; int /*<<< orphan*/ * jprs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3(jsonsl_t jsn,
                                 jsonsl_jpr_t *jprs,
                                 size_t njprs)
{
    size_t ii, *firstjmp;
    if (njprs == 0) {
        return;
    }
    jsn->jprs = (jsonsl_jpr_t *)FUNC1(sizeof(jsonsl_jpr_t) * njprs);
    jsn->jpr_count = njprs;
    jsn->jpr_root = (size_t*)FUNC0(1, sizeof(size_t) * njprs * jsn->levels_max);
    FUNC2(jsn->jprs, jprs, sizeof(jsonsl_jpr_t) * njprs);
    /* Set the initial jump table values */

    firstjmp = jsn->jpr_root;
    for (ii = 0; ii < njprs; ii++) {
        firstjmp[ii] = ii+1;
    }
}