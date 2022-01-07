
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int avl_tree_lock ;
typedef int avl ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ RRDVAR ;


 scalar_t__ avl_remove_lock (int *,int *) ;
 int error (char*,int ) ;

__attribute__((used)) static inline RRDVAR *rrdvar_index_del(avl_tree_lock *tree, RRDVAR *rv) {
    RRDVAR *ret = (RRDVAR *)avl_remove_lock(tree, (avl *)(rv));
    if(!ret)
        error("Request to remove RRDVAR '%s' from index failed. Not Found.", rv->name);

    return ret;
}
