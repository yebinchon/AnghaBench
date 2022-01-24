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
struct ffmpeg_muxer {int /*<<< orphan*/  stopping; int /*<<< orphan*/  sent_headers; int /*<<< orphan*/  active; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ffmpeg_muxer*) ; 
 scalar_t__ FUNC4 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static void FUNC5(struct ffmpeg_muxer *stream, int code)
{
	if (code) {
		FUNC1(stream->output, code);
	} else if (FUNC4(stream)) {
		FUNC0(stream->output);
	}

	FUNC2(&stream->active, false);
	FUNC2(&stream->sent_headers, false);
	FUNC2(&stream->stopping, false);
	FUNC3(stream);
}