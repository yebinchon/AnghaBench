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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {TYPE_2__* notifier; } ;
typedef  TYPE_1__ php_stream_context ;
struct TYPE_7__ {int /*<<< orphan*/  dtor; int /*<<< orphan*/  ptr; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  user_space_stream_notifier ; 
 int /*<<< orphan*/  user_space_stream_notifier_dtor ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(php_stream_context *context, zval *params)
{
	int ret = SUCCESS;
	zval *tmp;

	if (NULL != (tmp = FUNC7(FUNC1(params), "notification", sizeof("notification")-1))) {

		if (context->notifier) {
			FUNC6(context->notifier);
			context->notifier = NULL;
		}

		context->notifier = FUNC5();
		context->notifier->func = user_space_stream_notifier;
		FUNC0(&context->notifier->ptr, tmp);
		context->notifier->dtor = user_space_stream_notifier_dtor;
	}
	if (NULL != (tmp = FUNC7(FUNC1(params), "options", sizeof("options")-1))) {
		if (FUNC2(tmp) == IS_ARRAY) {
			FUNC3(context, tmp);
		} else {
			FUNC4(NULL, E_WARNING, "Invalid stream/context parameter");
		}
	}

	return ret;
}