#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_14__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_13__ {char const* name; int /*<<< orphan*/  events; TYPE_2__* first; int /*<<< orphan*/  metrics; int /*<<< orphan*/  index; int /*<<< orphan*/  default_options; } ;
struct TYPE_11__ {TYPE_8__* ext; } ;
struct TYPE_12__ {struct TYPE_12__* next; scalar_t__ name; TYPE_1__ histogram; int /*<<< orphan*/  options; scalar_t__ type; int /*<<< orphan*/  hash; } ;
typedef  scalar_t__ STATSD_METRIC_TYPE ;
typedef  int /*<<< orphan*/  STATSD_METRIC_HISTOGRAM_EXTENSIONS ;
typedef  TYPE_2__ STATSD_METRIC ;
typedef  TYPE_3__ STATSD_INDEX ;

/* Variables and functions */
 int /*<<< orphan*/  D_STATSD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ STATSD_METRIC_TYPE_HISTOGRAM ; 
 scalar_t__ STATSD_METRIC_TYPE_TIMER ; 
 TYPE_8__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static inline STATSD_METRIC *FUNC11(STATSD_INDEX *index, const char *name, STATSD_METRIC_TYPE type) {
    FUNC4(D_STATSD, "searching for metric '%s' under '%s'", name, index->name);

    uint32_t hash = FUNC7(name);

    STATSD_METRIC *m = FUNC8(index, name, hash);
    if(FUNC10(!m)) {
        FUNC4(D_STATSD, "Creating new %s metric '%s'", index->name, name);

        m = (STATSD_METRIC *)FUNC3(sizeof(STATSD_METRIC), 1);
        m->name = FUNC9(name);
        m->hash = hash;
        m->type = type;
        m->options = index->default_options;

        if(type == STATSD_METRIC_TYPE_HISTOGRAM || type == STATSD_METRIC_TYPE_TIMER) {
            m->histogram.ext = FUNC3(sizeof(STATSD_METRIC_HISTOGRAM_EXTENSIONS), 1);
            FUNC6(&m->histogram.ext->mutex);
        }
        STATSD_METRIC *n = (STATSD_METRIC *)FUNC0(&index->index, (avl *)m);
        if(FUNC10(n != m)) {
            FUNC5((void *)m->histogram.ext);
            FUNC5((void *)m->name);
            FUNC5((void *)m);
            m = n;
        }
        else {
            FUNC1(index);
            index->metrics++;
            m->next = index->first;
            index->first = m;
            FUNC2(index);
        }
    }

    index->events++;
    return m;
}