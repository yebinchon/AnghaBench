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
typedef  int /*<<< orphan*/  zval ;
struct zip_source {int dummy; } ;
struct zip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_EXISTS ; 
 scalar_t__ IS_FALSE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  ZIP_FL_OVERWRITE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct zip*) ; 
 scalar_t__ FUNC6 (struct zip*,char*,struct zip_source*,int /*<<< orphan*/ ) ; 
 struct zip_source* FUNC7 (struct zip*,char*,long,long) ; 
 int /*<<< orphan*/  FUNC8 (struct zip_source*) ; 

__attribute__((used)) static int FUNC9(struct zip *za, const char *filename, size_t filename_len,
	char *entry_name, size_t entry_name_len, long offset_start, long offset_len) /* {{{ */
{
	struct zip_source *zs;
	char resolved_path[MAXPATHLEN];
	zval exists_flag;


	if (FUNC0(filename)) {
		return -1;
	}

	if (!FUNC2(filename, resolved_path)) {
		return -1;
	}

	FUNC3(resolved_path, FUNC4(resolved_path), FS_EXISTS, &exists_flag);
	if (FUNC1(exists_flag) == IS_FALSE) {
		return -1;
	}

	zs = FUNC7(za, resolved_path, offset_start, offset_len);
	if (!zs) {
		return -1;
	}
	if (FUNC6(za, entry_name, zs, ZIP_FL_OVERWRITE) < 0) {
		FUNC8(zs);
		return -1;
	} else {
		FUNC5(za);
		return 1;
	}
}