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
struct main_params {int has_video; int tracks; int vbitrate; int width; int height; int fps_num; int fps_den; int /*<<< orphan*/  muxer_settings; int /*<<< orphan*/  acodec; int /*<<< orphan*/  vcodec; int /*<<< orphan*/  file; } ;
struct audio_params {int dummy; } ;

/* Variables and functions */
 struct audio_params* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_params*,int*,char***) ; 
 int /*<<< orphan*/  FUNC3 (int*,char***,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char***,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static bool FUNC6(int *argc, char ***argv, struct main_params *params,
			struct audio_params **p_audio)
{
	struct audio_params *audio = NULL;

	if (!FUNC4(argc, argv, &params->file, "file name"))
		return false;
	if (!FUNC3(argc, argv, &params->has_video, "video track count"))
		return false;
	if (!FUNC3(argc, argv, &params->tracks, "audio track count"))
		return false;

	if (params->has_video > 1 || params->has_video < 0) {
		FUNC5("Invalid number of video tracks\n");
		return false;
	}
	if (params->tracks < 0) {
		FUNC5("Invalid number of audio tracks\n");
		return false;
	}
	if (params->has_video == 0 && params->tracks == 0) {
		FUNC5("Must have at least 1 audio track or 1 video track\n");
		return false;
	}

	if (params->has_video) {
		if (!FUNC4(argc, argv, &params->vcodec, "video codec"))
			return false;
		if (!FUNC3(argc, argv, &params->vbitrate,
				 "video bitrate"))
			return false;
		if (!FUNC3(argc, argv, &params->width, "video width"))
			return false;
		if (!FUNC3(argc, argv, &params->height, "video height"))
			return false;
		if (!FUNC3(argc, argv, &params->fps_num, "video fps num"))
			return false;
		if (!FUNC3(argc, argv, &params->fps_den, "video fps den"))
			return false;
	}

	if (params->tracks) {
		if (!FUNC4(argc, argv, &params->acodec, "audio codec"))
			return false;

		audio = FUNC0(1, sizeof(*audio) * params->tracks);

		for (int i = 0; i < params->tracks; i++) {
			if (!FUNC2(&audio[i], argc, argv)) {
				FUNC1(audio);
				return false;
			}
		}
	}

	*p_audio = audio;

	FUNC4(argc, argv, &params->muxer_settings, "muxer settings");

	return true;
}