#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pDestructor; } ;
struct TYPE_6__ {scalar_t__ filename; TYPE_3__ class_table; TYPE_3__ function_table; } ;
struct TYPE_7__ {TYPE_1__ script; } ;
typedef  TYPE_2__ zend_persistent_script ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(zend_persistent_script *persistent_script, int destroy_elements)
{
	if (!destroy_elements) {
		persistent_script->script.function_table.pDestructor = NULL;
		persistent_script->script.class_table.pDestructor = NULL;
	}

	FUNC1(&persistent_script->script.function_table);
	FUNC1(&persistent_script->script.class_table);

	if (persistent_script->script.filename) {
		FUNC2(persistent_script->script.filename, 0);
	}

	FUNC0(persistent_script);
}