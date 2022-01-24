#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* d_name; } ;
struct TYPE_8__ {TYPE_1__ entry; int /*<<< orphan*/ * dirp; scalar_t__ index; } ;
struct TYPE_9__ {TYPE_2__ dir; } ;
struct TYPE_10__ {int _path_len; TYPE_3__ u; void* _path; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ spl_filesystem_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  REPORT_ERRORS ; 
 int /*<<< orphan*/  SPL_FILE_DIR_SKIPDOTS ; 
 int /*<<< orphan*/  SPL_FS_DIR ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_context ; 
 void* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_UnexpectedValueException ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC10(spl_filesystem_object* intern, char *path)
{
	int skip_dots = FUNC3(intern->flags, SPL_FILE_DIR_SKIPDOTS);

	intern->type = SPL_FS_DIR;
	intern->_path_len = FUNC8(path);
	intern->u.dir.dirp = FUNC5(path, REPORT_ERRORS, FUNC1(default_context));

	if (intern->_path_len > 1 && FUNC2(path, intern->_path_len-1)) {
		intern->_path = FUNC4(path, --intern->_path_len);
	} else {
		intern->_path = FUNC4(path, intern->_path_len);
	}
	intern->u.dir.index = 0;

	if (FUNC0(exception) || intern->u.dir.dirp == NULL) {
		intern->u.dir.entry.d_name[0] = '\0';
		if (!FUNC0(exception)) {
			/* open failed w/out notice (turned to exception due to EH_THROW) */
			FUNC9(spl_ce_UnexpectedValueException, 0,
				"Failed to open directory \"%s\"", path);
		}
	} else {
		do {
			FUNC6(intern);
		} while (skip_dots && FUNC7(intern->u.dir.entry.d_name));
	}
}