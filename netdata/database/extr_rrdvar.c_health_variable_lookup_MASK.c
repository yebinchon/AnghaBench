#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  calculated_number ;
struct TYPE_9__ {TYPE_2__* rrdset; } ;
struct TYPE_8__ {int /*<<< orphan*/  rrdvar_root_index; } ;
struct TYPE_7__ {TYPE_1__* rrdfamily; int /*<<< orphan*/  rrdvar_root_index; TYPE_3__* rrdhost; } ;
struct TYPE_6__ {int /*<<< orphan*/  rrdvar_root_index; } ;
typedef  int /*<<< orphan*/  RRDVAR ;
typedef  TYPE_2__ RRDSET ;
typedef  TYPE_3__ RRDHOST ;
typedef  TYPE_4__ RRDCALC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int FUNC2(const char *variable, uint32_t hash, RRDCALC *rc, calculated_number *result) {
    RRDSET *st = rc->rrdset;
    if(!st) return 0;

    RRDHOST *host = st->rrdhost;
    RRDVAR *rv;

    rv = FUNC1(&st->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = FUNC0(rv);
        return 1;
    }

    rv = FUNC1(&st->rrdfamily->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = FUNC0(rv);
        return 1;
    }

    rv = FUNC1(&host->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = FUNC0(rv);
        return 1;
    }

    return 0;
}