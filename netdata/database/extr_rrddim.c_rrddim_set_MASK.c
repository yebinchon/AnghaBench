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
typedef  int /*<<< orphan*/  collected_number ;
struct TYPE_7__ {int /*<<< orphan*/  hostname; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  id; TYPE_2__* rrdhost; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

collected_number FUNC4(RRDSET *st, const char *id, collected_number value) {
    RRDHOST *host = st->rrdhost;
    RRDDIM *rd = FUNC1(st, id);
    if(FUNC3(!rd)) {
        FUNC0("Cannot find dimension with id '%s' on stats '%s' (%s) on host '%s'.", id, st->name, st->id, host->hostname);
        return 0;
    }

    return FUNC2(st, rd, value);
}