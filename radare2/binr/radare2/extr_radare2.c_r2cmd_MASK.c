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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int) ; 
 int FUNC2 (int,unsigned char*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,...) ; 

__attribute__((used)) static void FUNC5(int in, int out, const char *cmd) {
        FUNC4 (out, cmd, FUNC3 (cmd) + 1);
        FUNC4 (out, "\n", 1);
        int bufsz = (1024 * 64);
        unsigned char *buf = FUNC1 (bufsz);
        if (!buf) {
                return;
        }
        while (1) {
                int n = FUNC2 (in, buf, bufsz);
                int len = FUNC3 ((const char *)buf);
                n = len;
                if (n < 1) {
                        break;
                }
                FUNC4 (1, buf, n);
		if (n != bufsz) {
			break;
		}
        }
        FUNC0 (buf);
        FUNC4 (1, "\n", 1);
}