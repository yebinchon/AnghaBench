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
struct ftl_stream {int /*<<< orphan*/  output; int /*<<< orphan*/  active; int /*<<< orphan*/  send_thread; } ;

/* Variables and functions */
 int OBS_OUTPUT_ERROR ; 
 int OBS_OUTPUT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ftl_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftl_stream*) ; 
 int /*<<< orphan*/  send_thread ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct ftl_stream *stream)
{
	int ret;

	FUNC3(stream);

	ret = FUNC2(&stream->send_thread, NULL, send_thread, stream);
	if (ret != 0) {
		FUNC4("Failed to create send thread");
		return OBS_OUTPUT_ERROR;
	}

	FUNC1(&stream->active, true);

	FUNC0(stream->output, 0);

	return OBS_OUTPUT_SUCCESS;
}