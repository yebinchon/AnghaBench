#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_14__ {int fn_flags; TYPE_8__* scope; int /*<<< orphan*/  function_name; int /*<<< orphan*/  handler; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ zend_internal_function ;
struct TYPE_13__ {int fn_flags; TYPE_8__* scope; int /*<<< orphan*/  function_name; } ;
struct TYPE_15__ {TYPE_1__ common; } ;
typedef  TYPE_3__ zend_function ;
struct TYPE_16__ {int /*<<< orphan*/  called_scope; TYPE_10__* object; TYPE_3__* function_handler; } ;
typedef  TYPE_4__ zend_fcall_info_cache ;
struct TYPE_17__ {int /*<<< orphan*/  __call; int /*<<< orphan*/  __callstatic; } ;
struct TYPE_12__ {scalar_t__ ce; } ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 int SUCCESS ; 
 int ZEND_ACC_CALL_VIA_TRAMPOLINE ; 
 int ZEND_ACC_STATIC ; 
 int /*<<< orphan*/  ZEND_INTERNAL_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ zend_ce_closure ; 
 int /*<<< orphan*/  zend_closure_call_magic ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,char**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(zval *return_value, zval *callable, char **error) /* {{{ */ {
	zend_fcall_info_cache fcc;
	zend_function *mptr;
	zval instance;
	zend_internal_function call;

	if (!FUNC5(callable, NULL, 0, NULL, &fcc, error)) {
		return FAILURE;
	}

	mptr = fcc.function_handler;
	if (mptr->common.fn_flags & ZEND_ACC_CALL_VIA_TRAMPOLINE) {
		/* For Closure::fromCallable([$closure, "__invoke"]) return $closure. */
		if (fcc.object && fcc.object->ce == zend_ce_closure
				&& FUNC6(mptr->common.function_name, "__invoke")) {
			FUNC1(return_value, fcc.object);
			FUNC0(fcc.object);
			FUNC4(mptr);
			return SUCCESS;
		}

		if (!mptr->common.scope) {
			return FAILURE;
		}
		if (mptr->common.fn_flags & ZEND_ACC_STATIC) {
			if (!mptr->common.scope->__callstatic) {
				return FAILURE;
			}
		} else {
			if (!mptr->common.scope->__call) {
				return FAILURE;
			}
		}

		FUNC2(&call, 0, sizeof(zend_internal_function));
		call.type = ZEND_INTERNAL_FUNCTION;
		call.fn_flags = mptr->common.fn_flags & ZEND_ACC_STATIC;
		call.handler = zend_closure_call_magic;
		call.function_name = mptr->common.function_name;
		call.scope = mptr->common.scope;

		FUNC4(mptr);
		mptr = (zend_function *) &call;
	}

	if (fcc.object) {
		FUNC1(&instance, fcc.object);
		FUNC3(return_value, mptr, mptr->common.scope, fcc.called_scope, &instance);
	} else {
		FUNC3(return_value, mptr, mptr->common.scope, fcc.called_scope, NULL);
	}

	return SUCCESS;
}