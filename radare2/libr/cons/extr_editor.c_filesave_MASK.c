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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int bytes ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* lines ; 
 int /*<<< orphan*/  nlines ; 
 scalar_t__ path ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7() {
	char buf[128];
	int i;
	if (!path) {
		FUNC0 ("File: ");
		buf[0] = 0;
		if (FUNC1 (buf, sizeof (buf) - 1, stdin)) {
			buf[sizeof (buf) - 1] = 0;
			i = FUNC6 (buf);
			if (i > 0) {
				buf[i - 1] = 0;
				FUNC2 (path);
				path = FUNC5 (buf);
			}
		}
	}
	if (lines) {
		for (i = 0; i < bytes; i++) {
			if (lines[i] == '\0') {
				lines[i] = '\n';
			}
		}
	}
	if (FUNC3 (path, (const ut8 *)lines, bytes, 0)) {
		FUNC0 ("File '%s' saved (%d byte(s))\n", path, bytes);
	} else {
		FUNC0 ("Cannot save file\n");
	}
	nlines = FUNC4 (lines, '\n');
}