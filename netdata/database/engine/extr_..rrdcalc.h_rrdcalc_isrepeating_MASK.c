#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ warn_repeat_every; scalar_t__ crit_repeat_every; } ;
typedef  TYPE_1__ RRDCALC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(RRDCALC *rc) {
    if (FUNC0(rc->warn_repeat_every > 0 || rc->crit_repeat_every > 0)) {
        return 1;
    }
    return 0;
}