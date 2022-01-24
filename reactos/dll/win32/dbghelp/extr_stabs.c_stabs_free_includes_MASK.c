#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* vector; struct TYPE_4__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ cu_nrofentries ; 
 TYPE_1__* cu_vector ; 
 TYPE_1__* include_defs ; 
 scalar_t__ num_alloc_include_def ; 
 int num_include_def ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;

    FUNC2();
    for (i = 0; i < num_include_def; i++)
    {
        FUNC1(FUNC0(), 0, include_defs[i].name);
        FUNC1(FUNC0(), 0, include_defs[i].vector);
    }
    FUNC1(FUNC0(), 0, include_defs);
    include_defs = NULL;
    num_include_def = 0;
    num_alloc_include_def = 0;
    FUNC1(FUNC0(), 0, cu_vector);
    cu_vector = NULL;
    cu_nrofentries = 0;
}