#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_object {TYPE_1__* props; int /*<<< orphan*/ ** props_info; } ;
struct TYPE_2__ {int count_props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

void FUNC3(struct drm_object *object)
{
    if (object->props) {
        for (int i = 0; i < object->props->count_props; i++) {
            if (object->props_info[i]) {
                FUNC1(object->props_info[i]);
                object->props_info[i] = NULL;
            }
        }

        FUNC2(object->props_info);
        object->props_info = NULL;

        FUNC0(object->props);
        object->props = NULL;
    }
}