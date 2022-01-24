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
struct dirent {int d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
#define  DT_DIR 130 
#define  DT_LNK 129 
#define  DT_REG 128 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(DIR *d, unsigned int level)
{
	struct dirent *de;

	de = FUNC9(d);
	FUNC0(de->d_type == DT_DIR);
	FUNC0(FUNC8(de->d_name, "."));

	de = FUNC9(d);
	FUNC0(de->d_type == DT_DIR);
	FUNC0(FUNC8(de->d_name, ".."));

	while ((de = FUNC9(d))) {
		FUNC0(!FUNC8(de->d_name, "."));
		FUNC0(!FUNC8(de->d_name, ".."));

		switch (de->d_type) {
			DIR *dd;
			int fd;

		case DT_REG:
			if (level == 0 && FUNC8(de->d_name, "sysrq-trigger")) {
				FUNC5(d, de->d_name, "h", 1);
			} else if (level == 1 && FUNC8(de->d_name, "clear_refs")) {
				FUNC5(d, de->d_name, "1", 1);
			} else if (level == 3 && FUNC8(de->d_name, "clear_refs")) {
				FUNC5(d, de->d_name, "1", 1);
			} else {
				FUNC4(d, de->d_name);
			}
			break;
		case DT_DIR:
			fd = FUNC7(FUNC2(d), de->d_name, O_DIRECTORY|O_RDONLY);
			if (fd == -1)
				continue;
			dd = FUNC6(fd);
			if (!dd)
				continue;
			FUNC10(dd, level + 1);
			FUNC1(dd);
			break;
		case DT_LNK:
			FUNC3(d, de->d_name);
			break;
		default:
			FUNC0(0);
		}
	}
}