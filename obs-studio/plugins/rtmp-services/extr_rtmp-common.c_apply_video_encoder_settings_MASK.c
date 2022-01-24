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
struct dstr {char const* array; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_item_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 scalar_t__ OBS_DATA_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC15(obs_data_t *settings,
					 json_t *recommended)
{
	json_t *item = FUNC7(recommended, "keyint");
	if (FUNC5(item)) {
		int keyint = (int)FUNC4(item);
		FUNC13(settings, "keyint_sec", keyint);
	}

	FUNC14(settings, "rate_control", "CBR");

	item = FUNC7(recommended, "profile");
	obs_data_item_t *enc_item = FUNC11(settings, "profile");
	if (FUNC6(item) &&
	    FUNC12(enc_item) == OBS_DATA_STRING) {
		const char *profile = FUNC8(item);
		FUNC14(settings, "profile", profile);
	}

	item = FUNC7(recommended, "max video bitrate");
	if (FUNC5(item)) {
		int max_bitrate = (int)FUNC4(item);
		if (FUNC9(settings, "bitrate") > max_bitrate) {
			FUNC13(settings, "bitrate", max_bitrate);
			FUNC13(settings, "buffer_size", max_bitrate);
		}
	}

	item = FUNC7(recommended, "bframes");
	if (FUNC5(item))
		FUNC13(settings, "bf", 0);

	item = FUNC7(recommended, "x264opts");
	if (FUNC6(item)) {
		const char *x264_settings = FUNC8(item);
		const char *cur_settings =
			FUNC10(settings, "x264opts");
		struct dstr opts;

		FUNC2(&opts, cur_settings);
		if (!FUNC3(&opts))
			FUNC0(&opts, " ");
		FUNC0(&opts, x264_settings);

		FUNC14(settings, "x264opts", opts.array);
		FUNC1(&opts);
	}
}