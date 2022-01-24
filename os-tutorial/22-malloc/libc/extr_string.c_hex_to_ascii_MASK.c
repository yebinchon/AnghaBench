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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1(int n, char str[]) {
    FUNC0(str, '0');
    FUNC0(str, 'x');
    char zeros = 0;

    s32 tmp;
    int i;
    for (i = 28; i > 0; i -= 4) {
        tmp = (n >> i) & 0xF;
        if (tmp == 0 && zeros == 0) continue;
        zeros = 1;
        if (tmp > 0xA) FUNC0(str, tmp - 0xA + 'a');
        else FUNC0(str, tmp + '0');
    }

    tmp = n & 0xF;
    if (tmp >= 0xA) FUNC0(str, tmp - 0xA + 'a');
    else FUNC0(str, tmp + '0');
}