#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* jsonsl_t ;
struct TYPE_8__ {int levels_max; int max_callback_level; TYPE_1__* stack; } ;
struct TYPE_7__ {unsigned int level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

jsonsl_t FUNC3(jsonsl_t jsn, int nlevels)
{
    unsigned int ii;

    FUNC2(jsn, 0, FUNC0(nlevels));
    jsn->levels_max = nlevels;
    jsn->max_callback_level = -1;
    FUNC1(jsn);
    for (ii = 0; ii < jsn->levels_max; ii++) {
        jsn->stack[ii].level = ii;
    }
    return jsn;
}