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
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int /*<<< orphan*/  count; int /*<<< orphan*/  events; TYPE_1__ counter; int /*<<< orphan*/  reset; } ;
typedef  TYPE_2__ STATSD_METRIC ;
typedef  int LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static inline void FUNC7(STATSD_METRIC *m, const char *value, const char *sampling) {
    if(!FUNC0(m)) return;

    // we accept empty values for counters

    if(FUNC5(m->reset)) FUNC4(m);

    if(FUNC5(FUNC6(value))) {
        // magic loading of metric, without affecting anything
    }
    else {
        m->counter.value += FUNC1((LONG_DOUBLE) FUNC2(value, 1) / FUNC3(sampling));

        m->events++;
        m->count++;
    }
}