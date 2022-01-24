#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* highlight; int fdout; TYPE_1__* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  config; } ;
struct TYPE_6__ {int is_interactive; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int R_CORE_PRJ_EVAL ; 
 int R_CORE_PRJ_FCNS ; 
 int R_CORE_PRJ_FLAGS ; 
 int R_CORE_PRJ_META ; 
 int R_CORE_PRJ_XREFS ; 
 int /*<<< orphan*/  R_META_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_5__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*,int,int) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static bool FUNC12(RCore *core, const char *file, int opts) {
	char *filename, *hl, *ohl = NULL;
	int fd, fdold;

	if (!file || * file == '\0') {
		return false;
	}

	filename = FUNC9 (file);
	fd = FUNC8 (file, O_BINARY | O_RDWR | O_CREAT | O_TRUNC, 0644);
	if (fd == -1) {
		FUNC1 (filename);
		return false;
	}

	hl = FUNC5 ()->highlight;
	if (hl) {
		ohl = FUNC11 (hl);
		FUNC4 (NULL);
	}

	fdold = FUNC5 ()->fdout;
	FUNC5 ()->fdout = fd;
	FUNC5 ()->context->is_interactive = false; // NOES must use api

	FUNC10 (fd, "# r2 rdb project file\n");

	if (opts & R_CORE_PRJ_EVAL) {
		FUNC10 (fd, "# eval\n");
		FUNC2 (core->config, NULL, true);
		FUNC3 ();
	}

	if (opts & R_CORE_PRJ_FCNS) {
		FUNC10 (fd, "# functions\n");
		FUNC6 (core, "afl*", 0);
		FUNC3 ();
	}

	if (opts & R_CORE_PRJ_FLAGS) {
		FUNC10 (fd, "# flags\n");
		FUNC6 (core, "f.**", 0);
		FUNC3 ();
	}
	if (opts & R_CORE_PRJ_META) {
		FUNC10 (fd, "# meta\n");
		FUNC7 (core->anal, R_META_TYPE_ANY, 1);
		FUNC3 ();
		FUNC6 (core, "fV*", 0);
		FUNC3 ();
	}
	if (opts & R_CORE_PRJ_XREFS) {
		FUNC10 (fd, "# xrefs\n");
		FUNC6 (core, "ax*", 0);
		FUNC3 ();
	}


	FUNC5 ()->fdout = fdold;
	FUNC5 ()->context->is_interactive = true;

	if (ohl) {
		FUNC4 (ohl);
		FUNC1 (ohl);
	}

	FUNC0 (fd);
	FUNC1 (filename);

	return true;
}