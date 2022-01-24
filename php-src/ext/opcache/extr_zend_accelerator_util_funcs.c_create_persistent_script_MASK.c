#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  class_table; int /*<<< orphan*/  function_table; } ;
struct TYPE_6__ {TYPE_1__ script; } ;
typedef  TYPE_2__ zend_persistent_script ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_CLASS_DTOR ; 
 int /*<<< orphan*/  ZEND_FUNCTION_DTOR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

zend_persistent_script* FUNC3(void)
{
	zend_persistent_script *persistent_script = (zend_persistent_script *) FUNC0(sizeof(zend_persistent_script));
	FUNC1(persistent_script, 0, sizeof(zend_persistent_script));

	FUNC2(&persistent_script->script.function_table, 0, NULL, ZEND_FUNCTION_DTOR, 0);
	/* class_table is usually destroyed by free_persistent_script() that
	 * overrides destructor. ZEND_CLASS_DTOR may be used by standard
	 * PHP compiler
	 */
	FUNC2(&persistent_script->script.class_table, 0, NULL, ZEND_CLASS_DTOR, 0);

	return persistent_script;
}