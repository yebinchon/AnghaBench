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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (char*) ; 

char *FUNC5(char *p) {
    // simple read string
    static char buf[256];
    FUNC1(p, stdout);
    char *s = FUNC0(buf, sizeof(buf), stdin);
    if (!s) {
        return NULL;
    }
    int l = FUNC4(buf);
    if (buf[l - 1] == '\n') {
        buf[l - 1] = 0;
    } else {
        l++;
    }
    char *line = FUNC2(l);
    FUNC3(line, buf, l);
    return line;
}