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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PHPDBG_MAX_CMD ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  lines ; 
 char* FUNC2 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static int FUNC6(int sock, const char *ptr, int len) {
	int count = 0, bytes = 0;
	const char *p = ptr, *endp = ptr + len;

	while ((p = FUNC2(p, '\n', endp - p))) {
		count++;
		p++;

		if (count % FUNC0(lines) == 0) {
			bytes += FUNC4(sock, ptr + bytes, (p - ptr) - bytes);

			if (FUNC2(p, '\n', endp - p)) {
				char buf[PHPDBG_MAX_CMD];
				FUNC5(sock, FUNC1("\r---Type <return> to continue or q <return> to quit---"));
				FUNC3(buf);
				if (*buf == 'q') {
					break;
				}
				FUNC5(sock, "\r", 1);
			} else break;
		}
	}
	if (bytes && count % FUNC0(lines) != 0) {
		bytes += FUNC4(sock, ptr + bytes, len - bytes);
	} else if (!bytes) {
		bytes += FUNC4(sock, ptr, len);
	}
	return bytes;
}