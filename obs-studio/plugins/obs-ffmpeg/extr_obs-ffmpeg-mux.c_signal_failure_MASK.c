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
typedef  int /*<<< orphan*/  uint8_t ;
struct ffmpeg_muxer {int /*<<< orphan*/  capturing; int /*<<< orphan*/  output; int /*<<< orphan*/  pipe; } ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
#define  FFM_UNSUPPORTED 128 
 int OBS_OUTPUT_ERROR ; 
 int OBS_OUTPUT_UNSUPPORTED ; 
 int FUNC0 (struct ffmpeg_muxer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(struct ffmpeg_muxer *stream)
{
	char error[1024];
	int ret;
	int code;

	size_t len;

	len = FUNC4(stream->pipe, (uint8_t *)error,
				       sizeof(error) - 1);

	if (len > 0) {
		error[len] = 0;
		FUNC5("ffmpeg-mux: %s", error);
		FUNC1(stream->output, error);
	}

	ret = FUNC0(stream, 0);

	switch (ret) {
	case FFM_UNSUPPORTED:
		code = OBS_OUTPUT_UNSUPPORTED;
		break;
	default:
		code = OBS_OUTPUT_ERROR;
	}

	FUNC2(stream->output, code);
	FUNC3(&stream->capturing, false);
}