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
struct ffmpeg_muxer {int /*<<< orphan*/  stopping; int /*<<< orphan*/  output; TYPE_1__ path; int /*<<< orphan*/  sent_headers; int /*<<< orphan*/  active; int /*<<< orphan*/ * pipe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static int FUNC7(struct ffmpeg_muxer *stream, int code)
{
	int ret = -1;

	if (FUNC0(stream)) {
		ret = FUNC5(stream->pipe);
		stream->pipe = NULL;

		FUNC4(&stream->active, false);
		FUNC4(&stream->sent_headers, false);

		FUNC1("Output of file '%s' stopped", stream->path.array);
	}

	if (code) {
		FUNC3(stream->output, code);
	} else if (FUNC6(stream)) {
		FUNC2(stream->output);
	}

	FUNC4(&stream->stopping, false);
	return ret;
}