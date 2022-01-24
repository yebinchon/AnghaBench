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
typedef  int ssize_t ;
struct TYPE_11__ {size_t smax; TYPE_2__* innerstream; int /*<<< orphan*/  tmpdir; } ;
typedef  TYPE_1__ php_stream_temp_data ;
struct TYPE_12__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  PHP_STREAM_FREE_CLOSE ; 
 int /*<<< orphan*/  PHP_STREAM_IS_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_2__*,size_t*) ; 
 int FUNC7 (TYPE_2__*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC8(php_stream *stream, const char *buf, size_t count)
{
	php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
	FUNC0(ts != NULL);

	if (!ts->innerstream) {
		return -1;
	}
	if (FUNC5(ts->innerstream, PHP_STREAM_IS_MEMORY)) {
		size_t memsize;
		char *membuf = FUNC6(ts->innerstream, &memsize);

		if (memsize + count >= ts->smax) {
			php_stream *file = FUNC3(ts->tmpdir, "php", NULL);
			if (file == NULL) {
				FUNC1(NULL, E_WARNING, "Unable to create temporary file, Check permissions in temporary files directory.");
				return 0;
			}
			FUNC7(file, membuf, memsize);
			FUNC4(ts->innerstream, PHP_STREAM_FREE_CLOSE);
			ts->innerstream = file;
			FUNC2(stream, ts->innerstream);
		}
	}
	return FUNC7(ts->innerstream, buf, count);
}