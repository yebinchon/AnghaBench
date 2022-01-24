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
typedef  int /*<<< orphan*/  rsbuf ;
typedef  int /*<<< orphan*/  lsbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,unsigned long,...) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 char* FUNC3 (unsigned long) ; 
 char* FUNC4 (unsigned long) ; 
 size_t FUNC5 (char*) ; 

void FUNC6(unsigned long e, char *buf, size_t len)
{
    char lsbuf[64], rsbuf[64];
    const char *ls, *rs;
    unsigned long f = 0, l, r;

    if (len == 0)
        return;

    l = FUNC1(e);
    ls = FUNC3(e);
    if (ls == NULL) {
        FUNC0(lsbuf, sizeof(lsbuf), "lib(%lu)", l);
        ls = lsbuf;
    }

    rs = FUNC4(e);
    r = FUNC2(e);
    if (rs == NULL) {
        FUNC0(rsbuf, sizeof(rsbuf), "reason(%lu)", r);
        rs = rsbuf;
    }

    FUNC0(buf, len, "error:%08lX:%s:%s:%s", e, ls, "", rs);
    if (FUNC5(buf) == len - 1) {
        /* Didn't fit; use a minimal format. */
        FUNC0(buf, len, "err:%lx:%lx:%lx:%lx", e, l, f, r);
    }
}