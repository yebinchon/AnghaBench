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
typedef  int /*<<< orphan*/  zend_stat_t ;
typedef  scalar_t__ zend_bool ;
struct phpdbg_init_state {char* init_file; char* code; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PHPDBG_MAX_CMD ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct phpdbg_init_state*) ; 

void FUNC7(char *init_file, size_t init_file_len, zend_bool free_init) /* {{{ */
{
	zend_stat_t sb;

	if (init_file && FUNC0(init_file, &sb) != -1) {
		FILE *fp = FUNC3(init_file, "r");
		if (fp) {
			char cmd[PHPDBG_MAX_CMD];
			struct phpdbg_init_state state = {0};

			state.init_file = init_file;

			while (FUNC2(cmd, PHPDBG_MAX_CMD, fp) != NULL) {
				FUNC6(cmd, &state);
			}

			if (state.code) {
				FUNC4(state.code);
			}

			FUNC1(fp);
		} else {
			FUNC5("initfailure", "type=\"openfile\" file=\"%s\"", "Failed to open %s for initialization", init_file);
		}

		if (free_init) {
			FUNC4(init_file);
		}
	}
}