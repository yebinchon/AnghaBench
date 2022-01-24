#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {TYPE_1__* scope; int /*<<< orphan*/  function_name; } ;
struct TYPE_10__ {TYPE_2__ common; } ;
typedef  TYPE_3__ zend_function ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_11__ {int /*<<< orphan*/  obj; int /*<<< orphan*/ * ce; int /*<<< orphan*/  ref_type; TYPE_3__* ptr; } ;
typedef  TYPE_4__ reflection_object ;
struct TYPE_8__ {int /*<<< orphan*/  name; scalar_t__ trait_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TYPE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reflection_method_ptr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC9(zend_class_entry *ce, zend_function *method, zval *closure_object, zval *object)
{
	reflection_object *intern;

	FUNC5(reflection_method_ptr, object);
	intern = FUNC4(object);
	intern->ptr = method;
	intern->ref_type = REF_TYPE_FUNCTION;
	intern->ce = ce;
	if (closure_object) {
		FUNC2(closure_object);
		FUNC0(&intern->obj, FUNC3(closure_object));
	}

	FUNC1(FUNC7(object),
		(method->common.scope && method->common.scope->trait_aliases)
			? FUNC8(ce, method) : method->common.function_name);
	FUNC1(FUNC6(object), method->common.scope->name);
}