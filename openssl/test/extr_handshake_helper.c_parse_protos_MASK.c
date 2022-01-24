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
 unsigned char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(const char *protos, unsigned char **out, size_t *outlen)
{
    size_t len, i, prefix;

    len = FUNC6(protos);

    /* Should never have reuse. */
    if (!FUNC4(*out)
            /* Test values are small, so we omit length limit checks. */
            || !FUNC3(*out = FUNC1(len + 1)))
        return 0;
    *outlen = len + 1;

    /*
     * foo => '3', 'f', 'o', 'o'
     * foo,bar => '3', 'f', 'o', 'o', '3', 'b', 'a', 'r'
     */
    FUNC5(*out + 1, protos, len);

    prefix = 0;
    i = prefix + 1;
    while (i <= len) {
        if ((*out)[i] == ',') {
            if (!FUNC2(i - 1, prefix))
                goto err;
            (*out)[prefix] = (unsigned char)(i - 1 - prefix);
            prefix = i;
        }
        i++;
    }
    if (!FUNC2(len, prefix))
        goto err;
    (*out)[prefix] = (unsigned char)(len - prefix);
    return 1;

err:
    FUNC0(*out);
    *out = NULL;
    return 0;
}