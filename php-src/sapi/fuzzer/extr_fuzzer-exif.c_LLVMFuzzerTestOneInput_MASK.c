#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(const uint8_t *Data, size_t Size) {
#if HAVE_EXIF
	php_stream *stream;
	zval stream_zv;

	if (Size > 256 * 1024) {
		/* Large inputs have a large impact on fuzzer performance,
		 * but are unlikely to be necessary to reach new codepaths. */
		return 0;
	}

	if (fuzzer_request_startup() == FAILURE) {
		return 0;
	}

	stream = php_stream_fopen_tmpfile();
	php_stream_write(stream, (const char *) Data, Size);
	php_stream_to_zval(stream, &stream_zv);

	fuzzer_call_php_func_zval("exif_read_data", 1, &stream_zv);

	zval_ptr_dtor(&stream_zv);

	/* cleanup */
	php_request_shutdown(NULL);

	return 0;
#else
	FUNC1(stderr, "\n\nERROR:\nPHP built without EXIF, recompile with --enable-exif to use this fuzzer\n");
	FUNC0(1);
#endif
}