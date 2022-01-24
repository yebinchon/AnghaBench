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
struct timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timeval*) ; 

inline usec_t FUNC1(struct timeval *now, struct timeval *old) {
    usec_t ts1 = FUNC0(now);
    usec_t ts2 = FUNC0(old);
    return (ts1 > ts2) ? (ts1 - ts2) : (ts2 - ts1);
}