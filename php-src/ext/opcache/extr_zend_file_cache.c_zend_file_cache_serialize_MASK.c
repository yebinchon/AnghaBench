#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  main_op_array; int /*<<< orphan*/  function_table; int /*<<< orphan*/  class_table; int /*<<< orphan*/  filename; } ;
struct TYPE_11__ {int size; char* mem; int /*<<< orphan*/  arena_mem; TYPE_1__ script; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_2__ zend_persistent_script ;
struct TYPE_12__ {void* magic; void* system_id; int mem_size; int script_offset; int /*<<< orphan*/  timestamp; scalar_t__ str_size; } ;
typedef  TYPE_3__ zend_file_cache_metainfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* accel_system_id ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  zend_file_cache_serialize_class ; 
 int /*<<< orphan*/  zend_file_cache_serialize_func ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,void*) ; 

__attribute__((used)) static void FUNC5(zend_persistent_script   *script,
                                      zend_file_cache_metainfo *info,
                                      void                     *buf)
{
	zend_persistent_script *new_script;

	FUNC2(info->magic, "OPCACHE", 8);
	FUNC2(info->system_id, accel_system_id, 32);
	info->mem_size = script->size;
	info->str_size = 0;
	info->script_offset = (char*)script - (char*)script->mem;
	info->timestamp = script->timestamp;

	FUNC2(buf, script->mem, script->size);

	new_script = (zend_persistent_script*)((char*)buf + info->script_offset);
	FUNC1(new_script->script.filename);

	FUNC3(&new_script->script.class_table, script, info, buf, zend_file_cache_serialize_class);
	FUNC3(&new_script->script.function_table, script, info, buf, zend_file_cache_serialize_func);
	FUNC4(&new_script->script.main_op_array, script, info, buf);

	FUNC0(new_script->arena_mem);
	new_script->mem = NULL;
}