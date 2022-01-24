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
struct TYPE_7__ {TYPE_1__* variables; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ RRDSETVAR ;
typedef  TYPE_2__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  D_VARIABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(RRDSET *st) {
    FUNC0(D_VARIABLES, "RRDSETVAR rename for chart id '%s' name '%s'", st->id, st->name);

    RRDSETVAR *rs;
    for(rs = st->variables; rs ; rs = rs->next)
        FUNC2(rs);

    FUNC1(st);
}