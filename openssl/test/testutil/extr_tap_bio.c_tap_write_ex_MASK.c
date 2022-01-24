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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int FUNC5(BIO *b, const char *buf, size_t size, size_t *in_size)
{
    static char empty[] = "";
    BIO *next = FUNC1(b);
    size_t i;
    int j;

    for (i = 0; i < size; i++) {
        if (FUNC0(b) == NULL) {
            FUNC2(b, empty);
            for (j = 0; j < FUNC3(); j++)
                if (!FUNC4(next, " ", 1))
                    goto err;
            if (!FUNC4(next, "# ", 2))
                goto err;
        }
        if (!FUNC4(next, buf + i, 1))
            goto err;
        if (buf[i] == '\n')
            FUNC2(b, NULL);
    }
    *in_size = i;
    return 1;

err:
    *in_size = i;
    return 0;
}