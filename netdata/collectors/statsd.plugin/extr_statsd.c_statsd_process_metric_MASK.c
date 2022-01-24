#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  unknown_types; int /*<<< orphan*/  timers; int /*<<< orphan*/  sets; int /*<<< orphan*/  histograms; int /*<<< orphan*/  meters; int /*<<< orphan*/  counters; int /*<<< orphan*/  gauges; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STATSD ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_COUNTER ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_GAUGE ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_HISTOGRAM ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_METER ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_SET ; 
 int /*<<< orphan*/  STATSD_METRIC_TYPE_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char const*) ; 
 TYPE_1__ statsd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(const char *name, const char *value, const char *type, const char *sampling, const char *tags) {
    (void)tags;

    FUNC0(D_STATSD, "STATSD: raw metric '%s', value '%s', type '%s', sampling '%s', tags '%s'", name?name:"(null)", value?value:"(null)", type?type:"(null)", sampling?sampling:"(null)", tags?tags:"(null)");

    if(FUNC9(!name || !*name)) return;
    if(FUNC9(!type || !*type)) type = "m";

    char t0 = type[0], t1 = type[1];

    if(FUNC9(t0 == 'g' && t1 == '\0')) {
        FUNC4(
                FUNC2(&statsd.gauges, name, STATSD_METRIC_TYPE_GAUGE),
                value, sampling);
    }
    else if(FUNC9((t0 == 'c' || t0 == 'C') && t1 == '\0')) {
        // etsy/statsd uses 'c'
        // brubeck     uses 'C'
        FUNC3(
                FUNC2(&statsd.counters, name, STATSD_METRIC_TYPE_COUNTER),
                value, sampling);
    }
    else if(FUNC9(t0 == 'm' && t1 == '\0')) {
        FUNC6(
                FUNC2(&statsd.meters, name, STATSD_METRIC_TYPE_METER),
                value, sampling);
    }
    else if(FUNC9(t0 == 'h' && t1 == '\0')) {
        FUNC5(
                FUNC2(&statsd.histograms, name, STATSD_METRIC_TYPE_HISTOGRAM),
                value, sampling);
    }
    else if(FUNC9(t0 == 's' && t1 == '\0')) {
        FUNC7(
                FUNC2(&statsd.sets, name, STATSD_METRIC_TYPE_SET),
                value);
    }
    else if(FUNC9(t0 == 'm' && t1 == 's' && type[2] == '\0')) {
        FUNC8(
                FUNC2(&statsd.timers, name, STATSD_METRIC_TYPE_TIMER),
                value, sampling);
    }
    else {
        statsd.unknown_types++;
        FUNC1("STATSD: metric '%s' with value '%s' is sent with unknown metric type '%s'", name, value?value:"", type);
    }
}