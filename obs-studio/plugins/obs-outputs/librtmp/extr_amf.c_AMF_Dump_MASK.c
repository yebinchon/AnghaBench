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
struct TYPE_3__ {int o_num; int /*<<< orphan*/ * o_props; } ;
typedef  TYPE_1__ AMFObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RTMP_LOGDEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void
FUNC2(AMFObject *obj)
{
    int n;
    FUNC1(RTMP_LOGDEBUG, "(object begin)");
    for (n = 0; n < obj->o_num; n++)
    {
        FUNC0(&obj->o_props[n]);
    }
    FUNC1(RTMP_LOGDEBUG, "(object end)");
}