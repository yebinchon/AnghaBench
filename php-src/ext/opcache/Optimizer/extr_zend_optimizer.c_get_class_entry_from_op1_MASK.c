#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_16__ {int /*<<< orphan*/  class_table; } ;
typedef  TYPE_3__ zend_script ;
struct TYPE_17__ {scalar_t__ filename; TYPE_6__* scope; } ;
typedef  TYPE_4__ zend_op_array ;
struct TYPE_13__ {int num; } ;
struct TYPE_18__ {scalar_t__ op1_type; TYPE_12__ op1; } ;
typedef  TYPE_5__ zend_op ;
struct TYPE_14__ {scalar_t__ filename; } ;
struct TYPE_15__ {TYPE_1__ user; } ;
struct TYPE_19__ {scalar_t__ type; int ce_flags; TYPE_2__ info; } ;
typedef  TYPE_6__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_12__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_CONST ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ IS_UNUSED ; 
 int ZEND_ACC_TRAIT ; 
 int ZEND_FETCH_CLASS_MASK ; 
 int ZEND_FETCH_CLASS_SELF ; 
 scalar_t__ ZEND_INTERNAL_CLASS ; 
 scalar_t__ ZEND_USER_CLASS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_table ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_class_entry *FUNC5(
		zend_script *script, zend_op_array *op_array, zend_op *opline) {
	if (opline->op1_type == IS_CONST) {
		zval *op1 = FUNC0(opline->op1);
		if (FUNC3(op1) == IS_STRING) {
			zend_string *class_name = FUNC2(op1 + 1);
			zend_class_entry *ce;
			if (script && (ce = FUNC4(&script->class_table, class_name))) {
				return ce;
			} else if ((ce = FUNC4(FUNC1(class_table), class_name))) {
				if (ce->type == ZEND_INTERNAL_CLASS) {
					return ce;
				} else if (ce->type == ZEND_USER_CLASS &&
						   ce->info.user.filename &&
						   ce->info.user.filename == op_array->filename) {
					return ce;
				}
			}
		}
	} else if (opline->op1_type == IS_UNUSED && op_array->scope
			&& !(op_array->scope->ce_flags & ZEND_ACC_TRAIT)
			&& (opline->op1.num & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_SELF) {
		return op_array->scope;
	}
	return NULL;
}