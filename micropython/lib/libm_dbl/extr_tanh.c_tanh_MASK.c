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

/* Variables and functions */
 double FUNC0 (int) ; 

double FUNC1(double x) {
    int sign = 0;
    if (x < 0) {
        sign = 1;
        x = -x;
    }
    x = FUNC0(-2 * x);
    x = x / (x + 2);
    return sign ? x : -x;
}