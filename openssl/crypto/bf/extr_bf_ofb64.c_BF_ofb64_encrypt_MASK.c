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
typedef  scalar_t__ BF_LONG ;
typedef  int /*<<< orphan*/  BF_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__) ; 

void FUNC3(const unsigned char *in, unsigned char *out,
                      long length, const BF_KEY *schedule,
                      unsigned char *ivec, int *num)
{
    register BF_LONG v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned char d[8];
    register char *dp;
    BF_LONG ti[2];
    unsigned char *iv;
    int save = 0;

    iv = (unsigned char *)ivec;
    FUNC2(iv, v0);
    FUNC2(iv, v1);
    ti[0] = v0;
    ti[1] = v1;
    dp = (char *)d;
    FUNC1(v0, dp);
    FUNC1(v1, dp);
    while (l--) {
        if (n == 0) {
            FUNC0((BF_LONG *)ti, schedule);
            dp = (char *)d;
            t = ti[0];
            FUNC1(t, dp);
            t = ti[1];
            FUNC1(t, dp);
            save++;
        }
        *(out++) = *(in++) ^ d[n];
        n = (n + 1) & 0x07;
    }
    if (save) {
        v0 = ti[0];
        v1 = ti[1];
        iv = (unsigned char *)ivec;
        FUNC1(v0, iv);
        FUNC1(v1, iv);
    }
    t = v0 = v1 = ti[0] = ti[1] = 0;
    *num = n;
}