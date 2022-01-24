#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  ser_context ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_2__ {int bsd_socket; } ;
typedef  TYPE_1__ php_socket ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_RESOURCE ; 
 int /*<<< orphan*/  PHP_STREAM_AS_FD ; 
 int /*<<< orphan*/  REPORT_ERRORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(zval *elem, unsigned i, void **args, ser_context *ctx)
{
	int *iarr = args[0];

	if (FUNC0(elem) == IS_RESOURCE) {
		php_stream *stream;
		php_socket *sock;

		sock = (php_socket *)FUNC7(elem, NULL, FUNC4());
		if (sock) {
			iarr[i] = sock->bsd_socket;
			return;
		}

		stream = (php_stream *)FUNC6(elem, NULL, FUNC3(), FUNC2());
		if (stream == NULL) {
			FUNC1(ctx, "resource is not a stream or a socket");
			return;
		}

		if (FUNC5(stream, PHP_STREAM_AS_FD, (void **)&iarr[i - 1],
				REPORT_ERRORS) == FAILURE) {
			FUNC1(ctx, "cast stream to file descriptor failed");
			return;
		}
	} else {
		FUNC1(ctx, "expected a resource variable");
	}
}