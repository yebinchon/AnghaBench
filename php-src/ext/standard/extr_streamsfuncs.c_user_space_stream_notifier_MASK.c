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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {TYPE_1__* notifier; } ;
typedef  TYPE_2__ php_stream_context ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(php_stream_context *context, int notifycode, int severity,
		char *xmsg, int xcode, size_t bytes_sofar, size_t bytes_max, void * ptr)
{
	zval *callback = &context->notifier->ptr;
	zval retval;
	zval zvs[6];
	int i;

	FUNC0(&zvs[0], notifycode);
	FUNC0(&zvs[1], severity);
	if (xmsg) {
		FUNC2(&zvs[2], xmsg);
	} else {
		FUNC1(&zvs[2]);
	}
	FUNC0(&zvs[3], xcode);
	FUNC0(&zvs[4], bytes_sofar);
	FUNC0(&zvs[5], bytes_max);

	if (FAILURE == FUNC3(NULL, NULL, callback, &retval, 6, zvs, 0, NULL)) {
		FUNC4(NULL, E_WARNING, "failed to call user notifier");
	}
	for (i = 0; i < 6; i++) {
		FUNC5(&zvs[i]);
	}
	FUNC5(&retval);
}