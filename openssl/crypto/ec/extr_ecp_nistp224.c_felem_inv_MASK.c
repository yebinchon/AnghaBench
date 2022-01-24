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
typedef  int /*<<< orphan*/  widefelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC3(felem out, const felem in)
{
    felem ftmp, ftmp2, ftmp3, ftmp4;
    widefelem tmp;
    unsigned i;

    FUNC2(tmp, in);
    FUNC1(ftmp, tmp);    /* 2 */
    FUNC0(tmp, in, ftmp);
    FUNC1(ftmp, tmp);    /* 2^2 - 1 */
    FUNC2(tmp, ftmp);
    FUNC1(ftmp, tmp);    /* 2^3 - 2 */
    FUNC0(tmp, in, ftmp);
    FUNC1(ftmp, tmp);    /* 2^3 - 1 */
    FUNC2(tmp, ftmp);
    FUNC1(ftmp2, tmp);   /* 2^4 - 2 */
    FUNC2(tmp, ftmp2);
    FUNC1(ftmp2, tmp);   /* 2^5 - 4 */
    FUNC2(tmp, ftmp2);
    FUNC1(ftmp2, tmp);   /* 2^6 - 8 */
    FUNC0(tmp, ftmp2, ftmp);
    FUNC1(ftmp, tmp);    /* 2^6 - 1 */
    FUNC2(tmp, ftmp);
    FUNC1(ftmp2, tmp);   /* 2^7 - 2 */
    for (i = 0; i < 5; ++i) {   /* 2^12 - 2^6 */
        FUNC2(tmp, ftmp2);
        FUNC1(ftmp2, tmp);
    }
    FUNC0(tmp, ftmp2, ftmp);
    FUNC1(ftmp2, tmp);   /* 2^12 - 1 */
    FUNC2(tmp, ftmp2);
    FUNC1(ftmp3, tmp);   /* 2^13 - 2 */
    for (i = 0; i < 11; ++i) {  /* 2^24 - 2^12 */
        FUNC2(tmp, ftmp3);
        FUNC1(ftmp3, tmp);
    }
    FUNC0(tmp, ftmp3, ftmp2);
    FUNC1(ftmp2, tmp);   /* 2^24 - 1 */
    FUNC2(tmp, ftmp2);
    FUNC1(ftmp3, tmp);   /* 2^25 - 2 */
    for (i = 0; i < 23; ++i) {  /* 2^48 - 2^24 */
        FUNC2(tmp, ftmp3);
        FUNC1(ftmp3, tmp);
    }
    FUNC0(tmp, ftmp3, ftmp2);
    FUNC1(ftmp3, tmp);   /* 2^48 - 1 */
    FUNC2(tmp, ftmp3);
    FUNC1(ftmp4, tmp);   /* 2^49 - 2 */
    for (i = 0; i < 47; ++i) {  /* 2^96 - 2^48 */
        FUNC2(tmp, ftmp4);
        FUNC1(ftmp4, tmp);
    }
    FUNC0(tmp, ftmp3, ftmp4);
    FUNC1(ftmp3, tmp);   /* 2^96 - 1 */
    FUNC2(tmp, ftmp3);
    FUNC1(ftmp4, tmp);   /* 2^97 - 2 */
    for (i = 0; i < 23; ++i) {  /* 2^120 - 2^24 */
        FUNC2(tmp, ftmp4);
        FUNC1(ftmp4, tmp);
    }
    FUNC0(tmp, ftmp2, ftmp4);
    FUNC1(ftmp2, tmp);   /* 2^120 - 1 */
    for (i = 0; i < 6; ++i) {   /* 2^126 - 2^6 */
        FUNC2(tmp, ftmp2);
        FUNC1(ftmp2, tmp);
    }
    FUNC0(tmp, ftmp2, ftmp);
    FUNC1(ftmp, tmp);    /* 2^126 - 1 */
    FUNC2(tmp, ftmp);
    FUNC1(ftmp, tmp);    /* 2^127 - 2 */
    FUNC0(tmp, ftmp, in);
    FUNC1(ftmp, tmp);    /* 2^127 - 1 */
    for (i = 0; i < 97; ++i) {  /* 2^224 - 2^97 */
        FUNC2(tmp, ftmp);
        FUNC1(ftmp, tmp);
    }
    FUNC0(tmp, ftmp, ftmp3);
    FUNC1(out, tmp);     /* 2^224 - 2^96 - 1 */
}