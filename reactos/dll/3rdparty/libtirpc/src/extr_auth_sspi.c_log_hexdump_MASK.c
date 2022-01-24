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
typedef  int u_int ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  bool_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  fd_out ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(bool_t on, const u_char *title, const u_char *buf, 
                    int len, int offset)
{
	int i, j, jm, c;

    if (!on) return;

	FUNC2(fd_out, "%04x: %s (len=%d)\n", FUNC0(), title, len);
	for (i = 0; i < len; i += 0x10) {
		FUNC2(fd_out, "  %04x: ", (u_int)(i + offset));
		jm = len - i;
		jm = jm > 16 ? 16 : jm;

		for (j = 0; j < jm; j++) {
			if ((j % 2) == 1)
				FUNC2(fd_out, "%02x ", (u_int) buf[i+j]);
			else
				FUNC2(fd_out, "%02x", (u_int) buf[i+j]);
		}
		for (; j < 16; j++) {
			if ((j % 2) == 1) FUNC2(fd_out, "   ");
			else FUNC2(fd_out, "  ");
		}
		FUNC2(fd_out, " ");

		for (j = 0; j < jm; j++) {
			c = buf[i+j];
			c = FUNC3(c) ? c : '.';
			FUNC2(fd_out, "%c", c);
		}
		FUNC2(fd_out, "\n");
	}
    FUNC1(fd_out);
}