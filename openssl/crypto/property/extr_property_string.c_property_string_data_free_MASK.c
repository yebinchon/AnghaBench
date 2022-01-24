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
struct TYPE_3__ {scalar_t__ prop_value_idx; scalar_t__ prop_name_idx; int /*<<< orphan*/  prop_values; int /*<<< orphan*/  prop_names; } ;
typedef  TYPE_1__ PROPERTY_STRING_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *vpropdata)
{
    PROPERTY_STRING_DATA *propdata = vpropdata;

    if (propdata == NULL)
        return;

    FUNC1(&propdata->prop_names);
    FUNC1(&propdata->prop_values);
    propdata->prop_name_idx = propdata->prop_value_idx = 0;

    FUNC0(propdata);
}