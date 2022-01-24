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
 unsigned char* FUNC0 (char const*,long*) ; 
 unsigned char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char const*) ; 
 unsigned char* FUNC7 (char const*,size_t,size_t*) ; 

__attribute__((used)) static int FUNC8(const char *value, unsigned char **buf, size_t *buflen)
{
    long len;

    /* Check for NULL literal */
    if (FUNC5(value, "NULL") == 0) {
        *buf = NULL;
        *buflen = 0;
        return 1;
    }

    /* Check for empty value */
    if (*value == '\0') {
        /*
         * Don't return NULL for zero length buffer. This is needed for
         * some tests with empty keys: HMAC_Init_ex() expects a non-NULL key
         * buffer even if the key length is 0, in order to detect key reset.
         */
        *buf = FUNC1(1);
        if (*buf == NULL)
            return 0;
        **buf = 0;
        *buflen = 0;
        return 1;
    }

    /* Check for string literal */
    if (value[0] == '"') {
        size_t vlen = FUNC6(++value);

        if (vlen == 0 || value[vlen - 1] != '"')
            return 0;
        vlen--;
        *buf = FUNC7(value, vlen, buflen);
        return *buf == NULL ? 0 : 1;
    }

    /* Otherwise assume as hex literal and convert it to binary buffer */
    if (!FUNC4(*buf = FUNC0(value, &len))) {
        FUNC2("Can't convert %s", value);
        FUNC3();
        return -1;
    }
    /* Size of input buffer means we'll never overflow */
    *buflen = len;
    return 1;
}