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
typedef  scalar_t__ LONG_DOUBLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b) {
    LONG_DOUBLE *p1 = (LONG_DOUBLE *)a, *p2 = (LONG_DOUBLE *)b;
    LONG_DOUBLE n1 = *p1, n2 = *p2;

    if(FUNC2(FUNC1(n1) || FUNC1(n2))) {
        if(FUNC1(n1) && !FUNC1(n2)) return -1;
        if(!FUNC1(n1) && FUNC1(n2)) return 1;
        return 0;
    }
    if(FUNC2(FUNC0(n1) || FUNC0(n2))) {
        if(!FUNC0(n1) && FUNC0(n2)) return -1;
        if(FUNC0(n1) && !FUNC0(n2)) return 1;
        return 0;
    }

    if(FUNC2(n1 < n2)) return -1;
    if(FUNC2(n1 > n2)) return 1;
    return 0;
}