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
typedef  int /*<<< orphan*/  AMFObjectProperty ;
typedef  TYPE_1__ AMFObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(AMFObject *obj, const AMFObjectProperty *prop)
{
    if (!(obj->o_num & 0x0f))
        obj->o_props =
            FUNC1(obj->o_props, (obj->o_num + 16) * sizeof(AMFObjectProperty));
    FUNC0(&obj->o_props[obj->o_num++], prop, sizeof(AMFObjectProperty));
}