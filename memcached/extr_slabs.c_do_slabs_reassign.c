
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum reassign_result_type { ____Placeholder_reassign_result_type } reassign_result_type ;
struct TYPE_4__ {int s_clsid; int d_clsid; } ;
struct TYPE_3__ {int slabs; } ;


 int REASSIGN_BADCLASS ;
 int REASSIGN_NOSPARE ;
 int REASSIGN_OK ;
 int REASSIGN_RUNNING ;
 int REASSIGN_SRC_DST_SAME ;
 int SLAB_GLOBAL_PAGE_POOL ;
 int power_largest ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ slab_rebal ;
 int slab_rebalance_cond ;
 int slab_rebalance_signal ;
 TYPE_1__* slabclass ;
 int slabs_lock ;
 int slabs_reassign_pick_any (int) ;

__attribute__((used)) static enum reassign_result_type do_slabs_reassign(int src, int dst) {
    bool nospare = 0;
    if (slab_rebalance_signal != 0)
        return REASSIGN_RUNNING;

    if (src == dst)
        return REASSIGN_SRC_DST_SAME;


    if (src == -1) {
        src = slabs_reassign_pick_any(dst);

    }

    if (src < SLAB_GLOBAL_PAGE_POOL || src > power_largest ||
        dst < SLAB_GLOBAL_PAGE_POOL || dst > power_largest)
        return REASSIGN_BADCLASS;

    pthread_mutex_lock(&slabs_lock);
    if (slabclass[src].slabs < 2)
        nospare = 1;
    pthread_mutex_unlock(&slabs_lock);
    if (nospare)
        return REASSIGN_NOSPARE;

    slab_rebal.s_clsid = src;
    slab_rebal.d_clsid = dst;

    slab_rebalance_signal = 1;
    pthread_cond_signal(&slab_rebalance_cond);

    return REASSIGN_OK;
}
