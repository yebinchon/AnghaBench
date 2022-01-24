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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *out, int *out_len,
                         const unsigned char *in, int in_len)
{
    if (in == NULL) {
        *out_len = 0;
    } else {
        int i, bits, len;

        bits = 8 * in_len;
        len = FUNC0(bits);
        if (len > 0xFF)
            return 0;

        out[0] = len;
        for (i = len; i > 0; --i) {
            out[i] = (bits & 0xFF);
            bits >>= 8;
        }
        FUNC1(out + len + 1, in, in_len);
        *out_len = (1 + len + in_len);
    }
    return 1;
}