#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  main_op_array; int /*<<< orphan*/  function_table; int /*<<< orphan*/  class_table; int /*<<< orphan*/  filename; } ;
struct TYPE_7__ {int /*<<< orphan*/  arena_mem; TYPE_1__ script; void* mem; } ;
typedef  TYPE_2__ zend_persistent_script ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_CLASS_DTOR ; 
 int /*<<< orphan*/  ZEND_FUNCTION_DTOR ; 
 int /*<<< orphan*/  zend_file_cache_unserialize_class ; 
 int /*<<< orphan*/  zend_file_cache_unserialize_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 

__attribute__((used)) static void FUNC4(zend_persistent_script  *script,
                                        void                    *buf)
{
	script->mem = buf;

	FUNC1(script->script.filename);

	FUNC2(&script->script.class_table,
			script, buf, zend_file_cache_unserialize_class, ZEND_CLASS_DTOR);
	FUNC2(&script->script.function_table,
			script, buf, zend_file_cache_unserialize_func, ZEND_FUNCTION_DTOR);
	FUNC3(&script->script.main_op_array, script, buf);

	FUNC0(script->arena_mem);
}