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
struct TYPE_6__ {int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ php_zlib_context ;
struct TYPE_7__ {int op; } ;
typedef  TYPE_2__ php_output_context ;

/* Variables and functions */
 int FAILURE ; 
 int PHP_OUTPUT_HANDLER_CLEAN ; 
 int PHP_OUTPUT_HANDLER_FINAL ; 
 int /*<<< orphan*/  PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS ; 
 int /*<<< orphan*/  PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE ; 
 int PHP_OUTPUT_HANDLER_START ; 
 int PHP_OUTPUT_HANDLER_STARTED ; 
#define  PHP_ZLIB_ENCODING_DEFLATE 129 
#define  PHP_ZLIB_ENCODING_GZIP 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compression_coding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  headers_sent ; 
 int /*<<< orphan*/  output_compression ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(void **handler_context, php_output_context *output_context)
{
	php_zlib_context *ctx = *(php_zlib_context **) handler_context;

	if (!FUNC5()) {
		/* "Vary: Accept-Encoding" header sent along uncompressed content breaks caching in MSIE,
			so let's just send it with successfully compressed content or unless the complete
			buffer gets discarded, see http://bugs.php.net/40325;

			Test as follows:
			+Vary: $ HTTP_ACCEPT_ENCODING=gzip ./sapi/cgi/php <<<'<?php ob_start("ob_gzhandler"); echo "foo\n";'
			+Vary: $ HTTP_ACCEPT_ENCODING= ./sapi/cgi/php <<<'<?php ob_start("ob_gzhandler"); echo "foo\n";'
			-Vary: $ HTTP_ACCEPT_ENCODING=gzip ./sapi/cgi/php <<<'<?php ob_start("ob_gzhandler"); echo "foo\n"; ob_end_clean();'
			-Vary: $ HTTP_ACCEPT_ENCODING= ./sapi/cgi/php <<<'<?php ob_start("ob_gzhandler"); echo "foo\n"; ob_end_clean();'
		*/
		if ((output_context->op & PHP_OUTPUT_HANDLER_START)
		&&	(output_context->op != (PHP_OUTPUT_HANDLER_START|PHP_OUTPUT_HANDLER_CLEAN|PHP_OUTPUT_HANDLER_FINAL))
		) {
			FUNC7(FUNC1("Vary: Accept-Encoding"), 1, 0);
		}
		return FAILURE;
	}

	if (SUCCESS != FUNC6(ctx, output_context)) {
		return FAILURE;
	}

	if (!(output_context->op & PHP_OUTPUT_HANDLER_CLEAN)) {
		int flags;

		if (SUCCESS == FUNC4(PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS, &flags)) {
			/* only run this once */
			if (!(flags & PHP_OUTPUT_HANDLER_STARTED)) {
				if (FUNC0(headers_sent) || !FUNC2(output_compression)) {
					FUNC3(&ctx->Z);
					return FAILURE;
				}
				switch (FUNC2(compression_coding)) {
					case PHP_ZLIB_ENCODING_GZIP:
						FUNC7(FUNC1("Content-Encoding: gzip"), 1, 1);
						break;
					case PHP_ZLIB_ENCODING_DEFLATE:
						FUNC7(FUNC1("Content-Encoding: deflate"), 1, 1);
						break;
					default:
						FUNC3(&ctx->Z);
						return FAILURE;
				}
				FUNC7(FUNC1("Vary: Accept-Encoding"), 1, 0);
				FUNC4(PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE, NULL);
			}
		}
	}

	return SUCCESS;
}