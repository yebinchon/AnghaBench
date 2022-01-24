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
struct ffmpeg_muxer {long long max_time; int max_size; int /*<<< orphan*/  output; scalar_t__ total_bytes; int /*<<< orphan*/  capturing; int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC7(void *data)
{
	struct ffmpeg_muxer *stream = data;

	if (!FUNC3(stream->output, 0))
		return false;
	if (!FUNC5(stream->output, 0))
		return false;

	obs_data_t *s = FUNC4(stream->output);
	stream->max_time = FUNC0(s, "max_time_sec") * 1000000LL;
	stream->max_size = FUNC0(s, "max_size_mb") * (1024 * 1024);
	FUNC1(s);

	FUNC6(&stream->active, true);
	FUNC6(&stream->capturing, true);
	stream->total_bytes = 0;
	FUNC2(stream->output, 0);

	return true;
}