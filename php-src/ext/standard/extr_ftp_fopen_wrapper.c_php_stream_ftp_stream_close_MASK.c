#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_wrapper ;
struct TYPE_6__ {struct TYPE_6__* wrapperthis; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(php_stream_wrapper *wrapper, php_stream *stream)
{
	php_stream *controlstream = stream->wrapperthis;
	int ret = 0;

	if (controlstream) {
		if (FUNC4(stream->mode, "wa+")) {
			char tmp_line[512];
			int result;

			/* For write modes close data stream first to signal EOF to server */
			result = FUNC0(controlstream);
			if (result != 226 && result != 250) {
				FUNC1(NULL, E_WARNING, "FTP server error %d:%s", result, tmp_line);
				ret = EOF;
			}
		}

		FUNC3(controlstream, "QUIT\r\n");
		FUNC2(controlstream);
		stream->wrapperthis = NULL;
	}

	return ret;
}