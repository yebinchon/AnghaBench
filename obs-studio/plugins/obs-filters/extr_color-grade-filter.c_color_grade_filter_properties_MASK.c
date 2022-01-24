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
struct lut_filter_data {char* file; } ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PATH_FILE ; 
 int /*<<< orphan*/  SETTING_CLUT_AMOUNT ; 
 int /*<<< orphan*/  SETTING_IMAGE_PATH ; 
 int /*<<< orphan*/  TEXT_AMOUNT ; 
 int /*<<< orphan*/  TEXT_IMAGE_PATH ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*,int) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 char* FUNC12 (char const*,char) ; 

__attribute__((used)) static obs_properties_t *FUNC13(void *data)
{
	struct lut_filter_data *s = data;
	struct dstr path = {0};
	const char *slash;

	obs_properties_t *props = FUNC11();
	struct dstr filter_str = {0};

	FUNC2(&filter_str, "(*.png)");

	if (s && s->file && *s->file) {
		FUNC4(&path, s->file);
	} else {
		char *lut_dir = FUNC8("LUTs");
		FUNC4(&path, lut_dir);
		FUNC3(&path, '/');
		FUNC1(lut_dir);
	}

	FUNC6(&path, "\\", "/");
	slash = FUNC12(path.array, '/');
	if (slash)
		FUNC7(&path, slash - path.array + 1);

	FUNC10(props, SETTING_IMAGE_PATH, TEXT_IMAGE_PATH,
				OBS_PATH_FILE, filter_str.array, path.array);
	FUNC9(props, SETTING_CLUT_AMOUNT, TEXT_AMOUNT,
					0, 1, 0.01);

	FUNC5(&filter_str);
	FUNC5(&path);

	FUNC0(data);
	return props;
}