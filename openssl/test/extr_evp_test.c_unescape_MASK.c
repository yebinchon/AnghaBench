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
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 

__attribute__((used)) static unsigned char* FUNC5(const char *input, size_t input_len,
                               size_t *out_len)
{
    unsigned char *ret, *p;
    size_t i;

    if (input_len == 0) {
        *out_len = 0;
        return FUNC2(1);
    }

    /* Escaping is non-expanding; over-allocate original size for simplicity. */
    if (!FUNC4(ret = p = FUNC1(input_len)))
        return NULL;

    for (i = 0; i < input_len; i++) {
        if (*input == '\\') {
            if (i == input_len - 1 || *++input != 'n') {
                FUNC3("Bad escape sequence in file");
                goto err;
            }
            *p++ = '\n';
            i++;
            input++;
        } else {
            *p++ = *input++;
        }
    }

    *out_len = p - ret;
    return ret;

 err:
    FUNC0(ret);
    return NULL;
}