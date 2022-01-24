#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int update_every; TYPE_1__ last_collected_time; } ;
typedef  TYPE_2__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_FLAG_STORE_FIRST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(RRDSET *st) {
    st->last_collected_time.tv_sec -= st->last_collected_time.tv_sec % st->update_every;

    if(FUNC1(FUNC0(st, RRDSET_FLAG_STORE_FIRST)))
        st->last_collected_time.tv_usec = 0;
    else
        st->last_collected_time.tv_usec = 500000;
}