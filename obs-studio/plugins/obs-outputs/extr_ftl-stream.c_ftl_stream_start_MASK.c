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
struct ftl_stream {int /*<<< orphan*/  connect_thread; int /*<<< orphan*/  connecting; scalar_t__ frames_sent; int /*<<< orphan*/  output; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  connect_thread ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ftl_stream*) ; 

__attribute__((used)) static bool FUNC9(void *data)
{
	struct ftl_stream *stream = data;

	FUNC0("ftl_stream_start");

	// Mixer doesn't support bframes. So force them off.
	obs_encoder_t *video_encoder =
		FUNC5(stream->output);
	obs_data_t *video_settings = FUNC3(video_encoder);
	FUNC2(video_settings, "bf", 0);
	FUNC1(video_settings);

	if (!FUNC4(stream->output, 0)) {
		return false;
	}
	if (!FUNC6(stream->output, 0)) {
		return false;
	}

	stream->frames_sent = 0;
	FUNC7(&stream->connecting, true);

	return FUNC8(&stream->connect_thread, NULL, connect_thread,
			      stream) == 0;
}