#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_11__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_12__ {int /*<<< orphan*/  obj; void* dest; void* src; int /*<<< orphan*/  error; } ;
typedef  TYPE_2__ php_converter_object ;
typedef  int /*<<< orphan*/  UErrorCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*) ; 
 void* FUNC9 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_object *FUNC13(zend_object *object) {
	php_converter_object *objval, *oldobj = FUNC6(object);
	zend_object *retval = FUNC7(object->ce, &objval);
	UErrorCode error = U_ZERO_ERROR;

	FUNC5(&oldobj->error);

	objval->src = FUNC9(oldobj->src, NULL, NULL, &error);
	if (FUNC2(error)) {
		error = U_ZERO_ERROR;
		objval->dest = FUNC9(oldobj->dest, NULL, NULL, &error);
	}
	if (FUNC1(error)) {
		zend_string *err_msg;
		FUNC0(oldobj, "ucnv_safeClone", error);

		err_msg = FUNC4(&oldobj->error);
		FUNC12(NULL, FUNC3(err_msg), 0);
		FUNC11(err_msg, 0);

		return retval;
	}

	/* Update contexts for converter error handlers */
	FUNC8(objval, objval->src );
	FUNC8(objval, objval->dest);

	FUNC10(&(objval->obj), &(oldobj->obj));

	/* Newly cloned object deliberately does not inherit error state from original object */

	return retval;
}