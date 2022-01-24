#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  file ;
struct TYPE_3__ {int /*<<< orphan*/  bin; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(RCore *core, ut64 addr) {
	int line, line_old, i;
	char file[1024];

	int ret = FUNC2 (core->bin, addr, file, sizeof (file) - 1, &line);
	if (ret) {
		FUNC3 ("file: %s\nline: %d\n", file, line);
		line_old = line;
		if (line >= 2) {
			line -= 2;
		}
		if (FUNC4 (file)) {
			for (i = 0; i < 5; i++) {
				char *row = FUNC5 (file, line + i, 0);
				if (row) {
					FUNC3 ("%c %.3x  %s\n", line+i == line_old ? '>' : ' ', line+i, row);
					FUNC1 (row);
				}
			}
		} else {
			FUNC0 ("Cannot open '%s'\n", file);
		}
	}
	return ret;
}