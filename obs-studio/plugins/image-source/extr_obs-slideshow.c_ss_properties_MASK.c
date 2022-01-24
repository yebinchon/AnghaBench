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
struct TYPE_2__ {scalar_t__ num; } ;
struct slideshow {int /*<<< orphan*/  mutex; TYPE_1__ files; } ;
struct obs_video_info {scalar_t__ base_height; scalar_t__ base_width; } ;
struct image_file_data {int /*<<< orphan*/  path; } ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 size_t NUM_ASPECTS ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_EDITABLE ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_EDITABLE_LIST_TYPE_FILES ; 
 int /*<<< orphan*/  S_BEHAVIOR ; 
 char* S_BEHAVIOR_ALWAYS_PLAY ; 
 char* S_BEHAVIOR_PAUSE_UNPAUSE ; 
 char* S_BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  S_CUSTOM_SIZE ; 
 int /*<<< orphan*/  S_FILES ; 
 int /*<<< orphan*/  S_HIDE ; 
 int /*<<< orphan*/  S_LOOP ; 
 int /*<<< orphan*/  S_MODE ; 
 char* S_MODE_AUTO ; 
 char* S_MODE_MANUAL ; 
 int /*<<< orphan*/  S_RANDOMIZE ; 
 int /*<<< orphan*/  S_SLIDE_TIME ; 
 int /*<<< orphan*/  S_TRANSITION ; 
 int /*<<< orphan*/  S_TR_SPEED ; 
 char* TR_CUT ; 
 char* TR_FADE ; 
 char* TR_SLIDE ; 
 char* TR_SWIPE ; 
 int /*<<< orphan*/  T_BEHAVIOR ; 
 char* T_BEHAVIOR_ALWAYS_PLAY ; 
 char* T_BEHAVIOR_PAUSE_UNPAUSE ; 
 char* T_BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  T_CUSTOM_SIZE ; 
 char* T_CUSTOM_SIZE_AUTO ; 
 int /*<<< orphan*/  T_FILES ; 
 int /*<<< orphan*/  T_HIDE ; 
 int /*<<< orphan*/  T_LOOP ; 
 int /*<<< orphan*/  T_MODE ; 
 char* T_MODE_AUTO ; 
 char* T_MODE_MANUAL ; 
 int /*<<< orphan*/  T_RANDOMIZE ; 
 int /*<<< orphan*/  T_SLIDE_TIME ; 
 int /*<<< orphan*/  T_TRANSITION ; 
 char* T_TR_CUT ; 
 char* T_TR_FADE ; 
 char* T_TR_SLIDE ; 
 int /*<<< orphan*/  T_TR_SPEED ; 
 char* T_TR_SWIPE ; 
 char** aspects ; 
 struct image_file_data* FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,int) ; 
 int /*<<< orphan*/  file_filter ; 
 int /*<<< orphan*/  FUNC5 (struct obs_video_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int,int) ; 
 char* FUNC15 (char const*,char) ; 

__attribute__((used)) static obs_properties_t *FUNC16(void *data)
{
	obs_properties_t *ppts = FUNC10();
	struct slideshow *ss = data;
	struct obs_video_info ovi;
	struct dstr path = {0};
	obs_property_t *p;
	int cx;
	int cy;

	/* ----------------- */

	FUNC5(&ovi);
	cx = (int)ovi.base_width;
	cy = (int)ovi.base_height;

	/* ----------------- */

	p = FUNC9(ppts, S_BEHAVIOR, T_BEHAVIOR,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC11(p, T_BEHAVIOR_ALWAYS_PLAY,
				     S_BEHAVIOR_ALWAYS_PLAY);
	FUNC11(p, T_BEHAVIOR_STOP_RESTART,
				     S_BEHAVIOR_STOP_RESTART);
	FUNC11(p, T_BEHAVIOR_PAUSE_UNPAUSE,
				     S_BEHAVIOR_PAUSE_UNPAUSE);

	p = FUNC9(ppts, S_MODE, T_MODE, OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC11(p, T_MODE_AUTO, S_MODE_AUTO);
	FUNC11(p, T_MODE_MANUAL, S_MODE_MANUAL);

	p = FUNC9(ppts, S_TRANSITION, T_TRANSITION,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC11(p, T_TR_CUT, TR_CUT);
	FUNC11(p, T_TR_FADE, TR_FADE);
	FUNC11(p, T_TR_SWIPE, TR_SWIPE);
	FUNC11(p, T_TR_SLIDE, TR_SLIDE);

	FUNC8(ppts, S_SLIDE_TIME, T_SLIDE_TIME, 50, 3600000,
			       50);
	FUNC8(ppts, S_TR_SPEED, T_TR_SPEED, 0, 3600000, 50);
	FUNC6(ppts, S_LOOP, T_LOOP);
	FUNC6(ppts, S_HIDE, T_HIDE);
	FUNC6(ppts, S_RANDOMIZE, T_RANDOMIZE);

	p = FUNC9(ppts, S_CUSTOM_SIZE, T_CUSTOM_SIZE,
				    OBS_COMBO_TYPE_EDITABLE,
				    OBS_COMBO_FORMAT_STRING);

	FUNC11(p, T_CUSTOM_SIZE_AUTO, T_CUSTOM_SIZE_AUTO);

	for (size_t i = 0; i < NUM_ASPECTS; i++)
		FUNC11(p, aspects[i], aspects[i]);

	char str[32];
	FUNC14(str, 32, "%dx%d", cx, cy);
	FUNC11(p, str, str);

	if (ss) {
		FUNC12(&ss->mutex);
		if (ss->files.num) {
			struct image_file_data *last = FUNC0(ss->files);
			const char *slash;

			FUNC1(&path, last->path);
			FUNC3(&path, "\\", "/");
			slash = FUNC15(path.array, '/');
			if (slash)
				FUNC4(&path, slash - path.array + 1);
		}
		FUNC13(&ss->mutex);
	}

	FUNC7(ppts, S_FILES, T_FILES,
					 OBS_EDITABLE_LIST_TYPE_FILES,
					 file_filter, path.array);
	FUNC2(&path);

	return ppts;
}