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

/* Variables and functions */
 int STDIN_BUFFER_SIZE ; 
 char* FUNC0 (int,int) ; 
 int flags ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4() {
	char *buf = FUNC0 (1, STDIN_BUFFER_SIZE + 1);
	int l; // , sflag = (flags & 5);
	if (!buf) {
		return 0;
	}
	if (!(flags & (1<<14))) {
		for (l = 0; l >= 0 && l < STDIN_BUFFER_SIZE; l++) {
			// make sure we don't read beyond boundaries
			int n = FUNC3 (0, buf + l, STDIN_BUFFER_SIZE - l);
			if (n < 1) {
				break;
			}
			l += n;
			if (buf[l - 1] == 0) {
				l--;
				continue;
			}
			buf[n] = 0;
			// if (sflag && strlen (buf) < STDIN_BUFFER_SIZE) // -S
			buf[STDIN_BUFFER_SIZE] = '\0';
			if (!FUNC2 (buf, l, 0)) {
				break;
			}
			l = -1;
		}
	} else {
		l = 1;
	}
	if (l > 0) {
		FUNC2 (buf, l, 0);
	}
	FUNC1 (buf);
	return 0;
}