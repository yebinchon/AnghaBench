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
struct win_version_info {int major; } ;
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct ffmpeg_muxer {TYPE_1__ path; int /*<<< orphan*/  output; scalar_t__ total_bytes; int /*<<< orphan*/  capturing; int /*<<< orphan*/  active; int /*<<< orphan*/  pipe; } ;
struct dstr {char* array; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct win_version_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct ffmpeg_muxer*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static bool FUNC20(void *data)
{
	struct ffmpeg_muxer *stream = data;
	obs_data_t *settings;
	const char *path;

	if (!FUNC11(stream->output, 0))
		return false;
	if (!FUNC13(stream->output, 0))
		return false;

	settings = FUNC12(stream->output);
	path = FUNC7(settings, "path");

	/* ensure output path is writable to avoid generic error message */
	/* TODO: remove once ffmpeg-mux is refactored to pass errors back */
	FILE *test_file = FUNC16(path, "wb");
	if (!test_file) {
		struct dstr error_message;
		FUNC2(&error_message,
			       FUNC9("UnableToWritePath"));
#ifdef _WIN32
		// special warning for Windows 10 users about Defender
		struct win_version_info ver;
		get_win_ver(&ver);
		if (ver.major >= 10) {
			dstr_cat(&error_message, "\n\n");
			dstr_cat(&error_message,
				 obs_module_text("WarnWindowsDefender"));
		}
#endif
		FUNC3(&error_message, "%1", path);
		FUNC14(stream->output, error_message.array);
		FUNC1(&error_message);
		FUNC8(settings);
		return false;
	}

	FUNC4(test_file);
	FUNC17(path);

	FUNC18(stream, path);
	FUNC8(settings);

	if (!stream->pipe) {
		FUNC14(
			stream->output, FUNC9("HelperProcessFailed"));
		FUNC19("Failed to create process pipe");
		return false;
	}

	/* write headers and start capture */
	FUNC15(&stream->active, true);
	FUNC15(&stream->capturing, true);
	stream->total_bytes = 0;
	FUNC10(stream->output, 0);

	FUNC6("Writing file '%s'...", stream->path.array);
	return true;
}