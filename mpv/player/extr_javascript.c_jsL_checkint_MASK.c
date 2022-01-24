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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 double INT_MAX ; 
 double INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 double FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(js_State *J, int idx)
{
    double d = FUNC1(J, idx);
    if (!(d >= INT_MIN && d <= INT_MAX))
        FUNC0(J, "int out of range at index %d", idx);
    return d;
}