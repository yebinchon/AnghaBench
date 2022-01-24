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
struct ffmpeg_source {char* input; } ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_INT ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_PATH_FILE ; 
 int /*<<< orphan*/  OBS_PROPERTIES_DEFER_UPDATE ; 
 int /*<<< orphan*/  OBS_TEXT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  VIDEO_RANGE_DEFAULT ; 
 int /*<<< orphan*/  VIDEO_RANGE_FULL ; 
 int /*<<< orphan*/  VIDEO_RANGE_PARTIAL ; 
 char* audio_filter ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,int) ; 
 int /*<<< orphan*/  is_local_file_modified ; 
 char* media_filter ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC18 (char const*,char) ; 
 char* video_filter ; 

__attribute__((used)) static obs_properties_t *FUNC19(void *data)
{
	struct ffmpeg_source *s = data;
	struct dstr filter = {0};
	struct dstr path = {0};
	FUNC0(data);

	obs_properties_t *props = FUNC12();

	FUNC13(props, OBS_PROPERTIES_DEFER_UPDATE);

	obs_property_t *prop;
	// use this when obs allows non-readonly paths
	prop = FUNC7(props, "is_local_file",
				       FUNC6("LocalFile"));

	FUNC17(prop, is_local_file_modified);

	FUNC2(&filter, FUNC6("MediaFileFilter.AllMediaFiles"));
	FUNC1(&filter, media_filter);
	FUNC1(&filter, FUNC6("MediaFileFilter.VideoFiles"));
	FUNC1(&filter, video_filter);
	FUNC1(&filter, FUNC6("MediaFileFilter.AudioFiles"));
	FUNC1(&filter, audio_filter);
	FUNC1(&filter, FUNC6("MediaFileFilter.AllFiles"));
	FUNC1(&filter, " (*.*)");

	if (s && s->input && *s->input) {
		const char *slash;

		FUNC2(&path, s->input);
		FUNC4(&path, "\\", "/");
		slash = FUNC18(path.array, '/');
		if (slash)
			FUNC5(&path, slash - path.array + 1);
	}

	FUNC10(props, "local_file",
				FUNC6("LocalFile"), OBS_PATH_FILE,
				filter.array, path.array);
	FUNC3(&filter);
	FUNC3(&path);

	prop = FUNC7(props, "looping",
				       FUNC6("Looping"));

	FUNC7(props, "restart_on_activate",
				FUNC6("RestartWhenActivated"));

	prop = FUNC8(props, "buffering_mb",
					     FUNC6("BufferingMB"), 1,
					     16, 1);
	FUNC14(prop, " MB");

	FUNC11(props, "input", FUNC6("Input"),
				OBS_TEXT_DEFAULT);

	FUNC11(props, "input_format",
				FUNC6("InputFormat"),
				OBS_TEXT_DEFAULT);

#ifndef __APPLE__
	FUNC7(props, "hw_decode",
				FUNC6("HardwareDecode"));
#endif

	FUNC7(props, "clear_on_media_end",
				FUNC6("ClearOnMediaEnd"));

	prop = FUNC7(
		props, "close_when_inactive",
		FUNC6("CloseFileWhenInactive"));

	FUNC16(
		prop, FUNC6("CloseFileWhenInactive.ToolTip"));

	prop = FUNC8(props, "speed_percent",
					     FUNC6("SpeedPercentage"),
					     1, 200, 1);
	FUNC14(prop, "%");

	prop = FUNC9(props, "color_range",
				       FUNC6("ColorRange"),
				       OBS_COMBO_TYPE_LIST,
				       OBS_COMBO_FORMAT_INT);
	FUNC15(prop, FUNC6("ColorRange.Auto"),
				  VIDEO_RANGE_DEFAULT);
	FUNC15(prop, FUNC6("ColorRange.Partial"),
				  VIDEO_RANGE_PARTIAL);
	FUNC15(prop, FUNC6("ColorRange.Full"),
				  VIDEO_RANGE_FULL);

	FUNC7(props, "seekable", FUNC6("Seekable"));

	return props;
}