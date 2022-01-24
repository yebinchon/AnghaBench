#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_6__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {scalar_t__ usec_since_last_update; TYPE_1__ last_collected_time; } ;
typedef  TYPE_2__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_FLAG_SYNC_CLOCK ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

inline void FUNC3(RRDSET *st, usec_t microseconds) {
    if(FUNC2(!st->last_collected_time.tv_sec || !microseconds || (FUNC0(st, RRDSET_FLAG_SYNC_CLOCK)))) {
        // call the full next_usec() function
        FUNC1(st, microseconds);
        return;
    }

    st->usec_since_last_update = microseconds;
}