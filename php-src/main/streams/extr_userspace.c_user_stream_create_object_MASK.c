#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_12__ {void* object; int /*<<< orphan*/  called_scope; TYPE_2__* function_handler; } ;
typedef  TYPE_3__ zend_fcall_info_cache ;
struct TYPE_13__ {int size; int no_separation; int /*<<< orphan*/ * params; scalar_t__ param_count; int /*<<< orphan*/ * retval; void* object; int /*<<< orphan*/  function_name; } ;
typedef  TYPE_4__ zend_fcall_info ;
struct php_user_stream_wrapper {TYPE_9__* ce; } ;
struct TYPE_14__ {int /*<<< orphan*/  res; } ;
typedef  TYPE_5__ php_stream_context ;
typedef  int /*<<< orphan*/  fci ;
struct TYPE_15__ {int ce_flags; TYPE_2__* constructor; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  function_name; } ;
struct TYPE_11__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_EXPLICIT_ABSTRACT_CLASS ; 
 int ZEND_ACC_IMPLICIT_ABSTRACT_CLASS ; 
 int ZEND_ACC_INTERFACE ; 
 int ZEND_ACC_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct php_user_stream_wrapper *uwrap, php_stream_context *context, zval *object)
{
	if (uwrap->ce->ce_flags & (ZEND_ACC_INTERFACE|ZEND_ACC_TRAIT|ZEND_ACC_IMPLICIT_ABSTRACT_CLASS|ZEND_ACC_EXPLICIT_ABSTRACT_CLASS)) {
		FUNC2(object);
		return;
	}

	/* create an instance of our class */
	if (FUNC7(object, uwrap->ce) == FAILURE) {
		FUNC2(object);
		return;
	}

	if (context) {
		FUNC6(object, "context", context->res);
		FUNC0(context->res);
	} else {
		FUNC5(object, "context");
	}

	if (uwrap->ce->constructor) {
		zend_fcall_info fci;
		zend_fcall_info_cache fcc;
		zval retval;

		fci.size = sizeof(fci);
		FUNC2(&fci.function_name);
		fci.object = FUNC4(object);
		fci.retval = &retval;
		fci.param_count = 0;
		fci.params = NULL;
		fci.no_separation = 1;

		fcc.function_handler = uwrap->ce->constructor;
		fcc.called_scope = FUNC3(object);
		fcc.object = FUNC4(object);

		if (FUNC9(&fci, &fcc) == FAILURE) {
			FUNC8(NULL, E_WARNING, "Could not execute %s::%s()", FUNC1(uwrap->ce->name), FUNC1(uwrap->ce->constructor->common.function_name));
			FUNC10(object);
			FUNC2(object);
		} else {
			FUNC10(&retval);
		}
	}
}