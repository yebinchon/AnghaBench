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
struct bstr {int len; char* start; } ;

/* Variables and functions */
 int FUNC0 (struct bstr,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 

__attribute__((used)) static int FUNC2(struct bstr str, double *time, char endchar)
{
    int a, b, len;
    double d;
    *time = 0; /* ensure initialization for error cases */
    if (FUNC0(str, "%d:%d:%lf%n", &a, &b, &d, &len) >= 3)
        *time = 3600 * a + 60 * b + d;
    else if (FUNC0(str, "%d:%lf%n", &a, &d, &len) >= 2)
        *time = 60 * a + d;
    else if (FUNC0(str, "%lf%n", &d, &len) >= 1)
        *time = d;
    else
        return 0;  /* unsupported time format */
    if (len < str.len && str.start[len] != endchar)
        return 0;  /* invalid extra characters at the end */
    if (!FUNC1(*time))
        return 0;
    return len;
}