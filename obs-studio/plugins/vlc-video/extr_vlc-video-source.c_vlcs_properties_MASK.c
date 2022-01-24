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
struct vlc_source {int /*<<< orphan*/  mutex; TYPE_1__ files; } ;
struct media_file_data {int /*<<< orphan*/  path; } ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENSIONS_AUDIO ; 
 int /*<<< orphan*/  EXTENSIONS_MEDIA ; 
 int /*<<< orphan*/  EXTENSIONS_PLAYLIST ; 
 int /*<<< orphan*/  EXTENSIONS_VIDEO ; 
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS ; 
 int /*<<< orphan*/  OBS_PROPERTIES_DEFER_UPDATE ; 
 int /*<<< orphan*/  S_BEHAVIOR ; 
 int /*<<< orphan*/  S_BEHAVIOR_ALWAYS_PLAY ; 
 int /*<<< orphan*/  S_BEHAVIOR_PAUSE_UNPAUSE ; 
 int /*<<< orphan*/  S_BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  S_LOOP ; 
 int /*<<< orphan*/  S_NETWORK_CACHING ; 
 int /*<<< orphan*/  S_PLAYLIST ; 
 int /*<<< orphan*/  S_SHUFFLE ; 
 int /*<<< orphan*/  S_SUBTITLE_ENABLE ; 
 int /*<<< orphan*/  S_SUBTITLE_TRACK ; 
 int /*<<< orphan*/  S_TRACK ; 
 int /*<<< orphan*/  T_BEHAVIOR ; 
 int /*<<< orphan*/  T_BEHAVIOR_ALWAYS_PLAY ; 
 int /*<<< orphan*/  T_BEHAVIOR_PAUSE_UNPAUSE ; 
 int /*<<< orphan*/  T_BEHAVIOR_STOP_RESTART ; 
 int /*<<< orphan*/  T_LOOP ; 
 int /*<<< orphan*/  T_NETWORK_CACHING ; 
 int /*<<< orphan*/  T_PLAYLIST ; 
 int /*<<< orphan*/  T_SHUFFLE ; 
 int /*<<< orphan*/  T_SUBTITLE_ENABLE ; 
 int /*<<< orphan*/  T_SUBTITLE_TRACK ; 
 int /*<<< orphan*/  T_TRACK ; 
 struct media_file_data* FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (char const*,char) ; 

__attribute__((used)) static obs_properties_t *FUNC17(void *data)
{
	obs_properties_t *ppts = FUNC11();
	struct vlc_source *c = data;
	struct dstr filter = {0};
	struct dstr exts = {0};
	struct dstr path = {0};
	obs_property_t *p;

	FUNC12(ppts, OBS_PROPERTIES_DEFER_UPDATE);
	FUNC7(ppts, S_LOOP, T_LOOP);
	FUNC7(ppts, S_SHUFFLE, T_SHUFFLE);

	if (c) {
		FUNC14(&c->mutex);
		if (c->files.num) {
			struct media_file_data *last = FUNC0(c->files);
			const char *slash;

			FUNC3(&path, last->path);
			FUNC5(&path, "\\", "/");
			slash = FUNC16(path.array, '/');
			if (slash)
				FUNC6(&path, slash - path.array + 1);
		}
		FUNC15(&c->mutex);
	}

	p = FUNC10(ppts, S_BEHAVIOR, T_BEHAVIOR,
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);
	FUNC13(p, T_BEHAVIOR_STOP_RESTART,
				     S_BEHAVIOR_STOP_RESTART);
	FUNC13(p, T_BEHAVIOR_PAUSE_UNPAUSE,
				     S_BEHAVIOR_PAUSE_UNPAUSE);
	FUNC13(p, T_BEHAVIOR_ALWAYS_PLAY,
				     S_BEHAVIOR_ALWAYS_PLAY);

	FUNC1(&filter, "Media Files (");
	FUNC3(&exts, EXTENSIONS_MEDIA);
	FUNC5(&exts, ";", " ");
	FUNC2(&filter, &exts);

	FUNC1(&filter, ");;Video Files (");
	FUNC3(&exts, EXTENSIONS_VIDEO);
	FUNC5(&exts, ";", " ");
	FUNC2(&filter, &exts);

	FUNC1(&filter, ");;Audio Files (");
	FUNC3(&exts, EXTENSIONS_AUDIO);
	FUNC5(&exts, ";", " ");
	FUNC2(&filter, &exts);

	FUNC1(&filter, ");;Playlist Files (");
	FUNC3(&exts, EXTENSIONS_PLAYLIST);
	FUNC5(&exts, ";", " ");
	FUNC2(&filter, &exts);
	FUNC1(&filter, ")");

	FUNC8(ppts, S_PLAYLIST, T_PLAYLIST,
					 OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS,
					 filter.array, path.array);
	FUNC4(&path);
	FUNC4(&filter);
	FUNC4(&exts);

	FUNC9(ppts, S_NETWORK_CACHING, T_NETWORK_CACHING, 100,
			       60000, 10);
	FUNC9(ppts, S_TRACK, T_TRACK, 1, 10, 1);
	FUNC7(ppts, S_SUBTITLE_ENABLE, T_SUBTITLE_ENABLE);
	FUNC9(ppts, S_SUBTITLE_TRACK, T_SUBTITLE_TRACK, 1, 10,
			       1);

	return ppts;
}