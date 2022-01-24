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
struct ffmpeg_muxer {int /*<<< orphan*/  path; int /*<<< orphan*/  pipe; int /*<<< orphan*/  mux_packets; int /*<<< orphan*/  mux_thread; scalar_t__ mux_thread_joinable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_muxer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_muxer*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
	struct ffmpeg_muxer *stream = data;

	FUNC5(stream);
	if (stream->mux_thread_joinable)
		FUNC4(stream->mux_thread, NULL);
	FUNC1(stream->mux_packets);

	FUNC3(stream->pipe);
	FUNC2(&stream->path);
	FUNC0(stream);
}