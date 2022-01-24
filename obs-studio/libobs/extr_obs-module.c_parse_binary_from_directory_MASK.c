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
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,struct dstr*) ; 
 char FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*,char const*) ; 
 char const* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct dstr *parsed_bin_path,
					const char *bin_path, const char *file)
{
	struct dstr directory = {0};
	bool found = true;

	FUNC2(&directory, bin_path);
	FUNC6(&directory, "%module%", file);
	if (FUNC4(&directory) != '/')
		FUNC1(&directory, '/');

	FUNC3(parsed_bin_path, &directory);
	FUNC0(parsed_bin_path, file);
	FUNC0(parsed_bin_path, FUNC7());

	if (!FUNC8(parsed_bin_path->array)) {
		/* if the file doesn't exist, check with 'lib' prefix */
		FUNC3(parsed_bin_path, &directory);
		FUNC0(parsed_bin_path, "lib");
		FUNC0(parsed_bin_path, file);
		FUNC0(parsed_bin_path, FUNC7());

		/* if neither exist, don't include this as a library */
		if (!FUNC8(parsed_bin_path->array)) {
			FUNC5(parsed_bin_path);
			found = false;
		}
	}

	FUNC5(&directory);
	return found;
}