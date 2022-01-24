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
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct ftl_stream {int /*<<< orphan*/  connecting; int /*<<< orphan*/  connect_thread; TYPE_1__ path; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ftl_stream*) ; 
 int FUNC8 (struct ftl_stream*) ; 

__attribute__((used)) static void *FUNC9(void *data)
{
	struct ftl_stream *stream = data;
	int ret;

	FUNC5("ftl-stream: connect_thread");

	FUNC0(LOG_WARNING, "ftl-stream: connect thread");

	ret = FUNC2(stream);
	if (ret != OBS_OUTPUT_SUCCESS) {
		FUNC3(stream->output, ret);
		return NULL;
	}

	ret = FUNC8(stream);
	if (ret != OBS_OUTPUT_SUCCESS) {
		FUNC3(stream->output, ret);
		FUNC1("Connection to %s failed: %d", stream->path.array, ret);
	}

	if (!FUNC7(stream))
		FUNC6(stream->connect_thread);

	FUNC4(&stream->connecting, false);
	return NULL;
}