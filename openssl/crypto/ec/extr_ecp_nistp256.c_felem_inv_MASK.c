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
typedef  int /*<<< orphan*/  longfelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC4(felem out, const felem in)
{
    felem ftmp, ftmp2;
    /* each e_I will hold |in|^{2^I - 1} */
    felem e2, e4, e8, e16, e32, e64;
    longfelem tmp;
    unsigned i;

    FUNC3(tmp, in);
    FUNC2(ftmp, tmp);    /* 2^1 */
    FUNC1(tmp, in, ftmp);
    FUNC2(ftmp, tmp);    /* 2^2 - 2^0 */
    FUNC0(e2, ftmp);
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^3 - 2^1 */
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^4 - 2^2 */
    FUNC1(tmp, ftmp, e2);
    FUNC2(ftmp, tmp);    /* 2^4 - 2^0 */
    FUNC0(e4, ftmp);
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^5 - 2^1 */
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^6 - 2^2 */
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^7 - 2^3 */
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^8 - 2^4 */
    FUNC1(tmp, ftmp, e4);
    FUNC2(ftmp, tmp);    /* 2^8 - 2^0 */
    FUNC0(e8, ftmp);
    for (i = 0; i < 8; i++) {
        FUNC3(tmp, ftmp);
        FUNC2(ftmp, tmp);
    }                           /* 2^16 - 2^8 */
    FUNC1(tmp, ftmp, e8);
    FUNC2(ftmp, tmp);    /* 2^16 - 2^0 */
    FUNC0(e16, ftmp);
    for (i = 0; i < 16; i++) {
        FUNC3(tmp, ftmp);
        FUNC2(ftmp, tmp);
    }                           /* 2^32 - 2^16 */
    FUNC1(tmp, ftmp, e16);
    FUNC2(ftmp, tmp);    /* 2^32 - 2^0 */
    FUNC0(e32, ftmp);
    for (i = 0; i < 32; i++) {
        FUNC3(tmp, ftmp);
        FUNC2(ftmp, tmp);
    }                           /* 2^64 - 2^32 */
    FUNC0(e64, ftmp);
    FUNC1(tmp, ftmp, in);
    FUNC2(ftmp, tmp);    /* 2^64 - 2^32 + 2^0 */
    for (i = 0; i < 192; i++) {
        FUNC3(tmp, ftmp);
        FUNC2(ftmp, tmp);
    }                           /* 2^256 - 2^224 + 2^192 */

    FUNC1(tmp, e64, e32);
    FUNC2(ftmp2, tmp);   /* 2^64 - 2^0 */
    for (i = 0; i < 16; i++) {
        FUNC3(tmp, ftmp2);
        FUNC2(ftmp2, tmp);
    }                           /* 2^80 - 2^16 */
    FUNC1(tmp, ftmp2, e16);
    FUNC2(ftmp2, tmp);   /* 2^80 - 2^0 */
    for (i = 0; i < 8; i++) {
        FUNC3(tmp, ftmp2);
        FUNC2(ftmp2, tmp);
    }                           /* 2^88 - 2^8 */
    FUNC1(tmp, ftmp2, e8);
    FUNC2(ftmp2, tmp);   /* 2^88 - 2^0 */
    for (i = 0; i < 4; i++) {
        FUNC3(tmp, ftmp2);
        FUNC2(ftmp2, tmp);
    }                           /* 2^92 - 2^4 */
    FUNC1(tmp, ftmp2, e4);
    FUNC2(ftmp2, tmp);   /* 2^92 - 2^0 */
    FUNC3(tmp, ftmp2);
    FUNC2(ftmp2, tmp);   /* 2^93 - 2^1 */
    FUNC3(tmp, ftmp2);
    FUNC2(ftmp2, tmp);   /* 2^94 - 2^2 */
    FUNC1(tmp, ftmp2, e2);
    FUNC2(ftmp2, tmp);   /* 2^94 - 2^0 */
    FUNC3(tmp, ftmp2);
    FUNC2(ftmp2, tmp);   /* 2^95 - 2^1 */
    FUNC3(tmp, ftmp2);
    FUNC2(ftmp2, tmp);   /* 2^96 - 2^2 */
    FUNC1(tmp, ftmp2, in);
    FUNC2(ftmp2, tmp);   /* 2^96 - 3 */

    FUNC1(tmp, ftmp2, ftmp);
    FUNC2(out, tmp);     /* 2^256 - 2^224 + 2^192 + 2^96 - 3 */
}