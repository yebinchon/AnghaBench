
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ root; } ;
struct TYPE_6__ {TYPE_1__ avl_tree; } ;
typedef TYPE_2__ avl_tree_lock ;
typedef int RRDVAR ;
typedef int RRDHOST ;


 int error (char*) ;
 int rrdvar_free (int *,TYPE_2__*,int *) ;
 scalar_t__ unlikely (int) ;

void rrdvar_free_remaining_variables(RRDHOST *host, avl_tree_lock *tree_lock) {



    RRDVAR *rv, *last = ((void*)0);
    while((rv = (RRDVAR *)tree_lock->avl_tree.root)) {
        if(unlikely(rv == last)) {
            error("RRDVAR: INTERNAL ERROR: Cannot cleanup tree of RRDVARs");
            break;
        }
        last = rv;
        rrdvar_free(host, tree_lock, rv);
    }
}
