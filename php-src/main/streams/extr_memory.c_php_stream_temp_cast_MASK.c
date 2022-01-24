#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_off_t ;
struct TYPE_14__ {TYPE_2__* innerstream; } ;
typedef  TYPE_1__ php_stream_temp_data ;
struct TYPE_15__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int PHP_STREAM_AS_STDIO ; 
 int /*<<< orphan*/  PHP_STREAM_FREE_CLOSE ; 
 int /*<<< orphan*/  PHP_STREAM_IS_STDIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,int,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,size_t) ; 

__attribute__((used)) static int FUNC11(php_stream *stream, int castas, void **ret)
{
	php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
	php_stream *file;
	size_t memsize;
	char *membuf;
	zend_off_t pos;

	FUNC0(ts != NULL);

	if (!ts->innerstream) {
		return FAILURE;
	}
	if (FUNC6(ts->innerstream, PHP_STREAM_IS_STDIO)) {
		return FUNC2(ts->innerstream, castas, ret, 0);
	}

	/* we are still using a memory based backing. If they are if we can be
	 * a FILE*, say yes because we can perform the conversion.
	 * If they actually want to perform the conversion, we need to switch
	 * the memory stream to a tmpfile stream */

	if (ret == NULL && castas == PHP_STREAM_AS_STDIO) {
		return SUCCESS;
	}

	/* say "no" to other stream forms */
	if (ret == NULL) {
		return FAILURE;
	}

	file = FUNC4();
	if (file == NULL) {
		FUNC1(NULL, E_WARNING, "Unable to create temporary file.");
		return FAILURE;
	}

	/* perform the conversion and then pass the request on to the innerstream */
	membuf = FUNC7(ts->innerstream, &memsize);
	FUNC10(file, membuf, memsize);
	pos = FUNC9(ts->innerstream);

	FUNC5(ts->innerstream, PHP_STREAM_FREE_CLOSE);
	ts->innerstream = file;
	FUNC3(stream, ts->innerstream);
	FUNC8(ts->innerstream, pos, SEEK_SET);

	return FUNC2(ts->innerstream, castas, ret, 1);
}