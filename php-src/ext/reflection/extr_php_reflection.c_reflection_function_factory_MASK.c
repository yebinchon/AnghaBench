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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  function_name; } ;
struct TYPE_7__ {TYPE_1__ common; } ;
typedef  TYPE_2__ zend_function ;
struct TYPE_8__ {int /*<<< orphan*/  obj; int /*<<< orphan*/ * ce; int /*<<< orphan*/  ref_type; TYPE_2__* ptr; } ;
typedef  TYPE_3__ reflection_object ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TYPE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reflection_function_ptr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_function *function, zval *closure_object, zval *object)
{
	reflection_object *intern;
	FUNC5(reflection_function_ptr, object);
	intern = FUNC4(object);
	intern->ptr = function;
	intern->ref_type = REF_TYPE_FUNCTION;
	intern->ce = NULL;
	if (closure_object) {
		FUNC2(closure_object);
		FUNC0(&intern->obj, FUNC3(closure_object));
	}
	FUNC1(FUNC6(object), function->common.function_name);
}