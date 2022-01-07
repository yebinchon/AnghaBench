
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reassign_result_type { ____Placeholder_reassign_result_type } reassign_result_type ;


 int REASSIGN_RUNNING ;
 int do_slabs_reassign (int,int) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int slabs_rebalance_lock ;

enum reassign_result_type slabs_reassign(int src, int dst) {
    enum reassign_result_type ret;
    if (pthread_mutex_trylock(&slabs_rebalance_lock) != 0) {
        return REASSIGN_RUNNING;
    }
    ret = do_slabs_reassign(src, dst);
    pthread_mutex_unlock(&slabs_rebalance_lock);
    return ret;
}
