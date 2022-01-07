
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int avl_tree_lock ;
typedef int avl ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ RRDVAR ;


 int D_VARIABLES ;
 scalar_t__ avl_insert_lock (int *,int *) ;
 int debug (int ,char*,int ) ;

__attribute__((used)) static inline RRDVAR *rrdvar_index_add(avl_tree_lock *tree, RRDVAR *rv) {
    RRDVAR *ret = (RRDVAR *)avl_insert_lock(tree, (avl *)(rv));
    if(ret != rv)
        debug(D_VARIABLES, "Request to insert RRDVAR '%s' into index failed. Already exists.", rv->name);

    return ret;
}
