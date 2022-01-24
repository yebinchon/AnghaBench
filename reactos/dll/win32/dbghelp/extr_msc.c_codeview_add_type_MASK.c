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
struct symt {int dummy; } ;
struct TYPE_2__ {unsigned int num_defined_types; struct symt** defined_types; } ;

/* Variables and functions */
 int FALSE ; 
 unsigned int FIRST_DEFINABLE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct symt** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct symt** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symt**,int) ; 
 int TRUE ; 
 TYPE_1__* cv_current_module ; 
 void* FUNC4 (int,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int typeno, struct symt* dt)
{
    if (typeno < FIRST_DEFINABLE_TYPE)
        FUNC0("What the heck\n");
    if (!cv_current_module)
    {
        FUNC0("Adding %x to non allowed module\n", typeno);
        return FALSE;
    }
    if ((typeno >> 24) != 0)
        FUNC0("No module index while inserting type-id assumption is wrong %x\n",
              typeno);
    if (typeno - FIRST_DEFINABLE_TYPE >= cv_current_module->num_defined_types)
    {
        if (cv_current_module->defined_types)
        {
            cv_current_module->num_defined_types = FUNC4( cv_current_module->num_defined_types * 2,
                                                        typeno - FIRST_DEFINABLE_TYPE + 1 );
            cv_current_module->defined_types = FUNC3(FUNC1(),
                            HEAP_ZERO_MEMORY, cv_current_module->defined_types,
                            cv_current_module->num_defined_types * sizeof(struct symt*));
        }
        else
        {
            cv_current_module->num_defined_types = FUNC4( 256, typeno - FIRST_DEFINABLE_TYPE + 1 );
            cv_current_module->defined_types = FUNC2(FUNC1(),
                            HEAP_ZERO_MEMORY,
                            cv_current_module->num_defined_types * sizeof(struct symt*));
        }
        if (cv_current_module->defined_types == NULL) return FALSE;
    }
    if (cv_current_module->defined_types[typeno - FIRST_DEFINABLE_TYPE])
    {
        if (cv_current_module->defined_types[typeno - FIRST_DEFINABLE_TYPE] != dt)
            FUNC0("Overwriting at %x\n", typeno);
    }
    cv_current_module->defined_types[typeno - FIRST_DEFINABLE_TYPE] = dt;
    return TRUE;
}