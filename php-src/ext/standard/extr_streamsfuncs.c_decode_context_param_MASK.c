#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {int /*<<< orphan*/  res; } ;
typedef  TYPE_1__ php_stream_context ;
struct TYPE_10__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_stream_context *FUNC7(zval *contextresource)
{
	php_stream_context *context = NULL;

	context = FUNC6(contextresource, NULL, FUNC3());
	if (context == NULL) {
		php_stream *stream;

		stream = FUNC5(contextresource, NULL, FUNC2(), FUNC1());

		if (stream) {
			context = FUNC0(stream);
			if (context == NULL) {
				/* Only way this happens is if file is opened with NO_DEFAULT_CONTEXT
				   param, but then something is called which requires a context.
				   Don't give them the default one though since they already said they
	 			   didn't want it. */
				context = FUNC4();
				stream->ctx = context->res;
			}
		}
	}

	return context;
}