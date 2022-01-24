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
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

int FUNC9() {
    BUFFER *wb = FUNC0(1);
    char string[2048 + 1];
    char final[9000 + 1];
    int i;

    for(i = 0; i < 2048; i++)
        string[i] = (char)((i % 24) + 'a');
    string[2048] = '\0';

    const char *fmt = "string1: %s\nstring2: %s\nstring3: %s\nstring4: %s";
    FUNC2(wb, fmt, string, string, string, string);
    FUNC6(final, 9000, fmt, string, string, string, string);

    const char *s = FUNC4(wb);

    if(FUNC3(wb) != FUNC8(final) || FUNC7(s, final) != 0) {
        FUNC5(stderr, "\nbuffer_sprintf() is faulty.\n");
        FUNC5(stderr, "\nstring  : %s (length %zu)\n", string, FUNC8(string));
        FUNC5(stderr, "\nbuffer  : %s (length %zu)\n", s, FUNC3(wb));
        FUNC5(stderr, "\nexpected: %s (length %zu)\n", final, FUNC8(final));
        FUNC1(wb);
        return -1;
    }

    FUNC5(stderr, "buffer_sprintf() works as expected.\n");
    FUNC1(wb);
    return 0;
}