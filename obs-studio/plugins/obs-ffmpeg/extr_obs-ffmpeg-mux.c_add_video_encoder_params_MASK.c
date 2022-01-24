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
typedef  int /*<<< orphan*/  video_t ;
struct video_output_info {scalar_t__ fps_den; scalar_t__ fps_num; } ;
struct ffmpeg_muxer {int /*<<< orphan*/  output; } ;
struct dstr {int dummy; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct video_output_info* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ffmpeg_muxer *stream,
				     struct dstr *cmd, obs_encoder_t *vencoder)
{
	obs_data_t *settings = FUNC4(vencoder);
	int bitrate = (int)FUNC1(settings, "bitrate");
	video_t *video = FUNC5();
	const struct video_output_info *info = FUNC8(video);

	FUNC2(settings);

	FUNC0(cmd, "%s %d %d %d %d %d ", FUNC3(vencoder),
		  bitrate, FUNC7(stream->output),
		  FUNC6(stream->output), (int)info->fps_num,
		  (int)info->fps_den);
}