
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int avl_tree_lock ;
struct TYPE_10__ {char* hostname; } ;
struct TYPE_9__ {int options; struct TYPE_9__* name; struct TYPE_9__* value; } ;
typedef TYPE_1__ RRDVAR ;
typedef TYPE_2__ RRDHOST ;


 int D_VARIABLES ;
 int RRDVAR_OPTION_ALLOCATED ;
 int debug (int ,char*,TYPE_1__*) ;
 int error (char*,TYPE_1__*,char*) ;
 int freez (TYPE_1__*) ;
 int rrdvar_index_del (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

inline void rrdvar_free(RRDHOST *host, avl_tree_lock *tree, RRDVAR *rv) {
    (void)host;

    if(!rv) return;

    if(tree) {
        debug(D_VARIABLES, "Deleting variable '%s'", rv->name);
        if(unlikely(!rrdvar_index_del(tree, rv)))
            error("RRDVAR: Attempted to delete variable '%s' from host '%s', but it is not found.", rv->name, host->hostname);
    }

    if(rv->options & RRDVAR_OPTION_ALLOCATED)
        freez(rv->value);

    freez(rv->name);
    freez(rv);
}
