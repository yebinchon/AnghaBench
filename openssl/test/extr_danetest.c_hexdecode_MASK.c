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
typedef  char uint8_t ;
typedef  int ossl_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (char const) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static ossl_ssize_t FUNC7(const char *in, void *result)
{
    unsigned char **out = (unsigned char **)result;
    unsigned char *ret;
    unsigned char *cp;
    uint8_t byte;
    int nibble = 0;

    if (!FUNC3(ret = FUNC2(FUNC6(in) / 2)))
        return -1;
    cp = ret;

    for (byte = 0; *in; ++in) {
        int x;

        if (FUNC5(FUNC4(*in)))
            continue;
        x = FUNC1(*in);
        if (x < 0) {
            FUNC0(ret);
            return 0;
        }
        byte |= (char)x;
        if ((nibble ^= 1) == 0) {
            *cp++ = byte;
            byte = 0;
        } else {
            byte <<= 4;
        }
    }
    if (nibble != 0) {
        FUNC0(ret);
        return 0;
    }

    return cp - (*out = ret);
}