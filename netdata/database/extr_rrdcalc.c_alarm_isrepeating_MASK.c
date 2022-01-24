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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  alarms_idx_health_log; } ;
typedef  TYPE_1__ RRDHOST ;
typedef  TYPE_2__ RRDCALC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 

int FUNC2(RRDHOST *host, uint32_t alarm_id) {
    RRDCALC findme;
    findme.id = alarm_id;
    RRDCALC *rc = (RRDCALC *)FUNC0(&host->alarms_idx_health_log, (avl *)&findme);
    if (!rc) {
        return 0;
    }
    return FUNC1(rc);
}