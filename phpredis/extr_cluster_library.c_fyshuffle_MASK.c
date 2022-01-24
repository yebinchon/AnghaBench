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
 double RAND_MAX ; 
 double FUNC0 () ; 

__attribute__((used)) static void FUNC1(int *array, size_t len) {
    int temp, n = len;
    size_t r;

    /* Randomize */
    while (n > 1) {
        r = ((int)((double)n-- * (FUNC0() / (RAND_MAX+1.0))));
        temp = array[n];
        array[n] = array[r];
        array[r] = temp;
    };
}