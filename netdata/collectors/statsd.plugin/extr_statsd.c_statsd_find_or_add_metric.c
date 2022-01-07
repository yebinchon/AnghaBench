
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int avl ;
struct TYPE_14__ {int mutex; } ;
struct TYPE_13__ {char const* name; int events; TYPE_2__* first; int metrics; int index; int default_options; } ;
struct TYPE_11__ {TYPE_8__* ext; } ;
struct TYPE_12__ {struct TYPE_12__* next; scalar_t__ name; TYPE_1__ histogram; int options; scalar_t__ type; int hash; } ;
typedef scalar_t__ STATSD_METRIC_TYPE ;
typedef int STATSD_METRIC_HISTOGRAM_EXTENSIONS ;
typedef TYPE_2__ STATSD_METRIC ;
typedef TYPE_3__ STATSD_INDEX ;


 int D_STATSD ;
 scalar_t__ STATSD_AVL_INSERT (int *,int *) ;
 int STATSD_FIRST_PTR_MUTEX_LOCK (TYPE_3__*) ;
 int STATSD_FIRST_PTR_MUTEX_UNLOCK (TYPE_3__*) ;
 scalar_t__ STATSD_METRIC_TYPE_HISTOGRAM ;
 scalar_t__ STATSD_METRIC_TYPE_TIMER ;
 TYPE_8__* callocz (int,int) ;
 int debug (int ,char*,char const*,char const*) ;
 int freez (void*) ;
 int netdata_mutex_init (int *) ;
 int simple_hash (char const*) ;
 TYPE_2__* statsd_metric_index_find (TYPE_3__*,char const*,int ) ;
 scalar_t__ strdupz (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline STATSD_METRIC *statsd_find_or_add_metric(STATSD_INDEX *index, const char *name, STATSD_METRIC_TYPE type) {
    debug(D_STATSD, "searching for metric '%s' under '%s'", name, index->name);

    uint32_t hash = simple_hash(name);

    STATSD_METRIC *m = statsd_metric_index_find(index, name, hash);
    if(unlikely(!m)) {
        debug(D_STATSD, "Creating new %s metric '%s'", index->name, name);

        m = (STATSD_METRIC *)callocz(sizeof(STATSD_METRIC), 1);
        m->name = strdupz(name);
        m->hash = hash;
        m->type = type;
        m->options = index->default_options;

        if(type == STATSD_METRIC_TYPE_HISTOGRAM || type == STATSD_METRIC_TYPE_TIMER) {
            m->histogram.ext = callocz(sizeof(STATSD_METRIC_HISTOGRAM_EXTENSIONS), 1);
            netdata_mutex_init(&m->histogram.ext->mutex);
        }
        STATSD_METRIC *n = (STATSD_METRIC *)STATSD_AVL_INSERT(&index->index, (avl *)m);
        if(unlikely(n != m)) {
            freez((void *)m->histogram.ext);
            freez((void *)m->name);
            freez((void *)m);
            m = n;
        }
        else {
            STATSD_FIRST_PTR_MUTEX_LOCK(index);
            index->metrics++;
            m->next = index->first;
            index->first = m;
            STATSD_FIRST_PTR_MUTEX_UNLOCK(index);
        }
    }

    index->events++;
    return m;
}
