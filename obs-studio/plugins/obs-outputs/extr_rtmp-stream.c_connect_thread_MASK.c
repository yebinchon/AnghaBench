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
struct rtmp_stream {int /*<<< orphan*/  connecting; int /*<<< orphan*/  connect_thread; TYPE_1__ path; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int OBS_OUTPUT_BAD_PATH ; 
 int OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtmp_stream*) ; 
 int FUNC7 (struct rtmp_stream*) ; 

__attribute__((used)) static void *FUNC8(void *data)
{
	struct rtmp_stream *stream = data;
	int ret;

	FUNC4("rtmp-stream: connect_thread");

	if (!FUNC1(stream)) {
		FUNC2(stream->output, OBS_OUTPUT_BAD_PATH);
		return NULL;
	}

	ret = FUNC7(stream);

	if (ret != OBS_OUTPUT_SUCCESS) {
		FUNC2(stream->output, ret);
		FUNC0("Connection to %s failed: %d", stream->path.array, ret);
	}

	if (!FUNC6(stream))
		FUNC5(stream->connect_thread);

	FUNC3(&stream->connecting, false);
	return NULL;
}