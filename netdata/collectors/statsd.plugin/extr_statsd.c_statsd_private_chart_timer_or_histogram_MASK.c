#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int decimal_detail; char* histogram_percentile_str; int /*<<< orphan*/  update_every; } ;
struct TYPE_9__ {TYPE_1__* ext; } ;
struct TYPE_10__ {int options; scalar_t__ st; int /*<<< orphan*/  events; void* rd_count; int /*<<< orphan*/  last; void* rd_value; TYPE_2__ histogram; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  last_sum; void* rd_sum; int /*<<< orphan*/  last_stddev; void* rd_stddev; int /*<<< orphan*/  last_median; void* rd_median; int /*<<< orphan*/  last_percentile; void* rd_percentile; int /*<<< orphan*/  last_max; void* rd_max; int /*<<< orphan*/  last_min; void* rd_min; } ;
typedef  TYPE_3__ STATSD_METRIC ;

/* Variables and functions */
 int /*<<< orphan*/  D_STATSD ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_STATSD_PRIVATE ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_INCREMENTAL ; 
 int /*<<< orphan*/  RRD_ID_LENGTH_MAX ; 
 int STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_7__ statsd ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*,char*,int /*<<< orphan*/ *,char const*,char*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline void FUNC9(STATSD_METRIC *m, const char *dim, const char *family, const char *units) {
    FUNC0(D_STATSD, "updating private chart for %s metric '%s'", dim, m->name);

    if(FUNC8(!m->st)) {
        char type[RRD_ID_LENGTH_MAX + 1], id[RRD_ID_LENGTH_MAX + 1];
        FUNC6(m, type, id, dim, RRD_ID_LENGTH_MAX);

        char context[RRD_ID_LENGTH_MAX + 1];
        FUNC5(context, RRD_ID_LENGTH_MAX, "statsd_%s.%s", dim, m->name);

        char title[RRD_ID_LENGTH_MAX + 1];
        FUNC5(title, RRD_ID_LENGTH_MAX, "statsd private chart for %s %s", dim, m->name);

        m->st = FUNC7(
                m
                , type
                , id
                , NULL          // name
                , family        // family (submenu)
                , context       // context
                , title         // title
                , units         // units
                , NETDATA_CHART_PRIO_STATSD_PRIVATE
                , statsd.update_every
                , RRDSET_TYPE_AREA
        );

        m->histogram.ext->rd_min = FUNC1(m->st, "min", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_max = FUNC1(m->st, "max", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->rd_value              = FUNC1(m->st, "average", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_percentile = FUNC1(m->st, statsd.histogram_percentile_str, NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_median = FUNC1(m->st, "median", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_stddev = FUNC1(m->st, "stddev", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_sum = FUNC1(m->st, "sum", NULL, 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);

        if(m->options & STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT)
            m->rd_count = FUNC1(m->st, "events", NULL, 1, 1, RRD_ALGORITHM_INCREMENTAL);
    }
    else FUNC4(m->st);

    FUNC2(m->st, m->histogram.ext->rd_min, m->histogram.ext->last_min);
    FUNC2(m->st, m->histogram.ext->rd_max, m->histogram.ext->last_max);
    FUNC2(m->st, m->histogram.ext->rd_percentile, m->histogram.ext->last_percentile);
    FUNC2(m->st, m->histogram.ext->rd_median, m->histogram.ext->last_median);
    FUNC2(m->st, m->histogram.ext->rd_stddev, m->histogram.ext->last_stddev);
    FUNC2(m->st, m->histogram.ext->rd_sum, m->histogram.ext->last_sum);
    FUNC2(m->st, m->rd_value, m->last);

    if(m->rd_count)
        FUNC2(m->st, m->rd_count, m->events);

    FUNC3(m->st);
}