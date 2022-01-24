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
 int FUNC1 (char const) ; 
 unsigned char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static unsigned char *FUNC4(const char *str[3], size_t *len)
{
    size_t outer, inner, curr = 0;
    unsigned char *outbuf;
    size_t totlen = 0;

    /* Check lengths of all input strings are even */
    for (outer = 0; outer < 3; outer++) {
        totlen += FUNC3(str[outer]);
        if ((totlen & 1) != 0)
            return NULL;
    }

    totlen /= 2;
    outbuf = FUNC2(totlen);
    if (outbuf == NULL)
        return NULL;

    for (outer = 0; outer < 3; outer++) {
        for (inner = 0; str[outer][inner] != 0; inner += 2) {
            int hi, lo;

            hi = FUNC1(str[outer][inner]);
            lo = FUNC1(str[outer][inner + 1]);

            if (hi < 0 || lo < 0) {
                FUNC0(outbuf);
                return NULL;
            }
            outbuf[curr++] = (hi << 4) | lo;
        }
    }

    *len = totlen;
    return outbuf;
}