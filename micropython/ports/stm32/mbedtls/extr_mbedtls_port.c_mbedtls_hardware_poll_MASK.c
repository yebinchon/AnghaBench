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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 () ; 

int FUNC1(void *data, unsigned char *output, size_t len, size_t *olen) {
    uint32_t val;
    int n = 0;
    *olen = len;
    while (len--) {
        if (!n) {
            val = FUNC0();
            n = 4;
        }
        *output++ = val;
        val >>= 8;
        --n;
    }
    return 0;
}