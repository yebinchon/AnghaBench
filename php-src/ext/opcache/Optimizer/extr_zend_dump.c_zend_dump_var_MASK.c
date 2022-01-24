#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_uchar ;
struct TYPE_5__ {int last_var; TYPE_1__** vars; } ;
typedef  TYPE_2__ zend_op_array ;
struct TYPE_4__ {char* val; } ;

/* Variables and functions */
 int IS_CV ; 
 int IS_TMP_VAR ; 
 int IS_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(const zend_op_array *op_array, zend_uchar var_type, int var_num)
{
	if (var_type == IS_CV && var_num < op_array->last_var) {
		FUNC0(stderr, "CV%d($%s)", var_num, op_array->vars[var_num]->val);
	} else if (var_type == IS_VAR) {
		FUNC0(stderr, "V%d", var_num);
	} else if ((var_type & (IS_VAR|IS_TMP_VAR)) == IS_TMP_VAR) {
		FUNC0(stderr, "T%d", var_num);
	} else {
		FUNC0(stderr, "X%d", var_num);
	}
}