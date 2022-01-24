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
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int reset; int /*<<< orphan*/  count; int /*<<< orphan*/  events; TYPE_1__ gauge; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ STATSD_METRIC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char const*,double) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static inline void FUNC7(STATSD_METRIC *m, const char *value, const char *sampling) {
    if(!FUNC1(m)) return;

    if(FUNC5(!value || !*value)) {
        FUNC0("STATSD: metric '%s' of type gauge, with empty value is ignored.", m->name);
        return;
    }

    if(FUNC5(m->reset)) {
        // no need to reset anything specific for gauges
        FUNC4(m);
    }

    if(FUNC5(FUNC6(value))) {
        // magic loading of metric, without affecting anything
    }
    else {
        if (FUNC5(*value == '+' || *value == '-'))
            m->gauge.value += FUNC2(value, 1.0) / FUNC3(sampling);
        else
            m->gauge.value = FUNC2(value, 1.0);

        m->events++;
        m->count++;
    }
}