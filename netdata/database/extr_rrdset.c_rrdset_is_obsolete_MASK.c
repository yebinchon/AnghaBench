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
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_FLAG_OBSOLETE ; 
 int /*<<< orphan*/  RRDSET_FLAG_UPSTREAM_EXPOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

inline void FUNC5(RRDSET *st) {
    if(FUNC4(!(FUNC0(st, RRDSET_FLAG_OBSOLETE)))) {
        FUNC2(st, RRDSET_FLAG_OBSOLETE);
        FUNC1(st, RRDSET_FLAG_UPSTREAM_EXPOSED);

        // the chart will not get more updates (data collection)
        // so, we have to push its definition now
        FUNC3(st);
    }
}