#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ histogram_increase_step; } ;
struct TYPE_9__ {TYPE_1__* ext; } ;
struct TYPE_10__ {int reset; int /*<<< orphan*/  count; int /*<<< orphan*/  events; TYPE_2__ histogram; } ;
struct TYPE_8__ {int used; int size; double* values; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ STATSD_METRIC ;
typedef  double LONG_DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (double,double) ; 
 int FUNC3 (double,double) ; 
 long long FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 double* FUNC7 (double*,int) ; 
 TYPE_6__ statsd ; 
 double FUNC8 (char const*,double) ; 
 double FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (char const*) ; 

__attribute__((used)) static inline void FUNC13(STATSD_METRIC *m, const char *value, const char *sampling, const char *type) {
    if(!FUNC1(m)) return;

    if(FUNC11(!value || !*value)) {
        FUNC0("STATSD: metric of type %s, with empty value is ignored.", type);
        return;
    }

    if(FUNC11(m->reset)) {
        m->histogram.ext->used = 0;
        FUNC10(m);
    }

    if(FUNC11(FUNC12(value))) {
        // magic loading of metric, without affecting anything
    }
    else {
        LONG_DOUBLE v = FUNC8(value, 1.0);
        LONG_DOUBLE sampling_rate = FUNC9(sampling);
        if(FUNC11(FUNC3(sampling_rate, 0.01))) sampling_rate = 0.01;
        if(FUNC11(FUNC2(sampling_rate, 1.0))) sampling_rate = 1.0;

        long long samples = FUNC4(1.0 / sampling_rate);
        while(samples-- > 0) {

            if(FUNC11(m->histogram.ext->used == m->histogram.ext->size)) {
                FUNC5(&m->histogram.ext->mutex);
                m->histogram.ext->size += statsd.histogram_increase_step;
                m->histogram.ext->values = FUNC7(m->histogram.ext->values, sizeof(LONG_DOUBLE) * m->histogram.ext->size);
                FUNC6(&m->histogram.ext->mutex);
            }

            m->histogram.ext->values[m->histogram.ext->used++] = v;
        }

        m->events++;
        m->count++;
    }
}