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
typedef  int /*<<< orphan*/  sample ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(BUFFER *b, const char *backend) {
    char sample[1024];
    const char *s = FUNC2(b);
    char *d = sample, *e = &sample[sizeof(sample) - 1];

    for(; *s && d < e ;s++) {
        char c = *s;
        if(FUNC5(!FUNC4(c))) c = ' ';
        *d++ = c;
    }
    *d = '\0';

    FUNC3("BACKEND: received %zu bytes from %s backend. Ignoring them. Sample: '%s'", FUNC1(b), backend, sample);
    FUNC0(b);
    return 0;
}