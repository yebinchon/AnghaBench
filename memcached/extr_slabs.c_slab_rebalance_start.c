
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int slabs; int size; int perslab; scalar_t__* slab_list; } ;
typedef TYPE_1__ slabclass_t ;
struct TYPE_9__ {int verbose; } ;
struct TYPE_8__ {scalar_t__ s_clsid; scalar_t__ d_clsid; char* slab_end; int done; int * completed; scalar_t__ slab_start; scalar_t__ slab_pos; } ;
struct TYPE_7__ {int slab_reassign_running; } ;


 scalar_t__ SLAB_GLOBAL_PAGE_POOL ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 scalar_t__ calloc (int,int) ;
 int fprintf (int ,char*) ;
 int grow_slab_list (scalar_t__) ;
 scalar_t__ power_largest ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_5__ settings ;
 TYPE_4__ slab_rebal ;
 int slab_rebalance_signal ;
 TYPE_1__* slabclass ;
 int slabs_lock ;
 TYPE_2__ stats_state ;
 int stderr ;

__attribute__((used)) static int slab_rebalance_start(void) {
    slabclass_t *s_cls;
    int no_go = 0;

    pthread_mutex_lock(&slabs_lock);

    if (slab_rebal.s_clsid < SLAB_GLOBAL_PAGE_POOL ||
        slab_rebal.s_clsid > power_largest ||
        slab_rebal.d_clsid < SLAB_GLOBAL_PAGE_POOL ||
        slab_rebal.d_clsid > power_largest ||
        slab_rebal.s_clsid == slab_rebal.d_clsid)
        no_go = -2;

    s_cls = &slabclass[slab_rebal.s_clsid];

    if (!grow_slab_list(slab_rebal.d_clsid)) {
        no_go = -1;
    }

    if (s_cls->slabs < 2)
        no_go = -3;

    if (no_go != 0) {
        pthread_mutex_unlock(&slabs_lock);
        return no_go;
    }




    slab_rebal.slab_start = s_cls->slab_list[0];
    slab_rebal.slab_end = (char *)slab_rebal.slab_start +
        (s_cls->size * s_cls->perslab);
    slab_rebal.slab_pos = slab_rebal.slab_start;
    slab_rebal.done = 0;

    if (slab_rebal.s_clsid == SLAB_GLOBAL_PAGE_POOL) {
        slab_rebal.done = 1;
    }


    slab_rebal.completed = (uint8_t*)calloc(s_cls->perslab,sizeof(uint8_t));

    slab_rebalance_signal = 2;

    if (settings.verbose > 1) {
        fprintf(stderr, "Started a slab rebalance\n");
    }

    pthread_mutex_unlock(&slabs_lock);

    STATS_LOCK();
    stats_state.slab_reassign_running = 1;
    STATS_UNLOCK();

    return 0;
}
