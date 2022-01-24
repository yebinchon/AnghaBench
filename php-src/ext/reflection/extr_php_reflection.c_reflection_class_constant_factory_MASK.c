#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_7__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_8__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_2__ zend_class_constant ;
struct TYPE_9__ {scalar_t__ ignore_visibility; int /*<<< orphan*/  ce; int /*<<< orphan*/  ref_type; TYPE_2__* ptr; } ;
typedef  TYPE_3__ reflection_object ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TYPE_CLASS_CONSTANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reflection_class_constant_ptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_class_entry *ce, zend_string *name_str, zend_class_constant *constant, zval *object)
{
	reflection_object *intern;

	FUNC2(reflection_class_constant_ptr, object);
	intern = FUNC1(object);
	intern->ptr = constant;
	intern->ref_type = REF_TYPE_CLASS_CONSTANT;
	intern->ce = constant->ce;
	intern->ignore_visibility = 0;

	FUNC0(FUNC4(object), name_str);
	FUNC0(FUNC3(object), ce->name);
}