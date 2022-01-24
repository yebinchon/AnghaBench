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
struct bstr {int /*<<< orphan*/  start; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bstr FUNC1 (struct bstr,int) ; 
 struct bstr FUNC2 (struct bstr) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 double FUNC4 (char*,char**) ; 

double FUNC5(struct bstr str, struct bstr *rest)
{
    str = FUNC2(str);
    char buf[101];
    int len = FUNC0(str.len, 100);
    FUNC3(buf, str.start, len);
    buf[len] = 0;
    char *endptr;
    double r = FUNC4(buf, &endptr);
    if (rest)
        *rest = FUNC1(str, endptr - buf);
    return r;
}