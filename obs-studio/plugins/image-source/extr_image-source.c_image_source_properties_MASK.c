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
struct image_source {scalar_t__* file; } ;
struct dstr {char const* array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PATH_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct dstr*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,int) ; 
 int /*<<< orphan*/  image_filter ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *data)
{
	struct image_source *s = data;
	struct dstr path = {0};

	obs_properties_t *props = FUNC7();

	if (s && s->file && *s->file) {
		const char *slash;

		FUNC0(&path, s->file);
		FUNC2(&path, "\\", "/");
		slash = FUNC8(path.array, '/');
		if (slash)
			FUNC3(&path, slash - path.array + 1);
	}

	FUNC6(props, "file", FUNC4("File"),
				OBS_PATH_FILE, image_filter, path.array);
	FUNC5(props, "unload",
				FUNC4("UnloadWhenNotShowing"));
	FUNC1(&path);

	return props;
}