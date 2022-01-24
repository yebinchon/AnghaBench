#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRD_CALLS ; 
 int /*<<< orphan*/  RRDDIM_FLAG_OBSOLETE ; 
 int /*<<< orphan*/  RRDSET_FLAG_OBSOLETE_DIMENSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

inline void FUNC3(RRDSET *st, RRDDIM *rd) {
    FUNC0(D_RRD_CALLS, "rrddim_is_obsolete() for chart %s, dimension %s", st->name, rd->name);

    FUNC1(rd, RRDDIM_FLAG_OBSOLETE);
    FUNC2(st, RRDSET_FLAG_OBSOLETE_DIMENSIONS);
}