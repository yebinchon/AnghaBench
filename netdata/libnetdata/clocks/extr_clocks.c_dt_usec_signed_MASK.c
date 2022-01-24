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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  susec_t ;
struct timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct timeval*) ; 

inline susec_t FUNC2(struct timeval *now, struct timeval *old) {
    usec_t ts1 = FUNC1(now);
    usec_t ts2 = FUNC1(old);

    if(FUNC0(ts1 >= ts2)) return (susec_t)(ts1 - ts2);
    return -((susec_t)(ts2 - ts1));
}