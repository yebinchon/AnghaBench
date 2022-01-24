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
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  int DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 
 int FUNC2 (int,int) ; 

void FUNC3(DES_LONG *out, DES_key_schedule *ks, DES_LONG Eswap0,
                 DES_LONG Eswap1)
{
    register DES_LONG l, r, t, u;
    register DES_LONG *s;
    register int j;
    register DES_LONG E0, E1;

    l = 0;
    r = 0;

    s = (DES_LONG *)ks;
    E0 = Eswap0;
    E1 = Eswap1;

    for (j = 0; j < 25; j++) {
        FUNC0(l, r, 0);     /* 1 */
        FUNC0(r, l, 2);     /* 2 */
        FUNC0(l, r, 4);     /* 3 */
        FUNC0(r, l, 6);     /* 4 */
        FUNC0(l, r, 8);     /* 5 */
        FUNC0(r, l, 10);    /* 6 */
        FUNC0(l, r, 12);    /* 7 */
        FUNC0(r, l, 14);    /* 8 */
        FUNC0(l, r, 16);    /* 9 */
        FUNC0(r, l, 18);    /* 10 */
        FUNC0(l, r, 20);    /* 11 */
        FUNC0(r, l, 22);    /* 12 */
        FUNC0(l, r, 24);    /* 13 */
        FUNC0(r, l, 26);    /* 14 */
        FUNC0(l, r, 28);    /* 15 */
        FUNC0(r, l, 30);    /* 16 */
        t = l;
        l = r;
        r = t;
    }
    l = FUNC2(l, 3) & 0xffffffffL;
    r = FUNC2(r, 3) & 0xffffffffL;

    FUNC1(l, r, t,  1, 0x55555555L);
    FUNC1(r, l, t,  8, 0x00ff00ffL);
    FUNC1(l, r, t,  2, 0x33333333L);
    FUNC1(r, l, t, 16, 0x0000ffffL);
    FUNC1(l, r, t,  4, 0x0f0f0f0fL);

    out[0] = r;
    out[1] = l;
}