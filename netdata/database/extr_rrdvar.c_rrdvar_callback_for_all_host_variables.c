
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rrdvar_root_index; } ;
typedef TYPE_1__ RRDHOST ;


 int avl_traverse_lock (int *,int (*) (void*,void*),void*) ;

inline int rrdvar_callback_for_all_host_variables(RRDHOST *host, int (*callback)(void * , void * ), void *data) {
    return avl_traverse_lock(&host->rrdvar_root_index, callback, data);
}
