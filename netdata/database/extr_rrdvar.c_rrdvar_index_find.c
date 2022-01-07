
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl_tree_lock ;
typedef int avl ;
struct TYPE_3__ {char* name; scalar_t__ hash; } ;
typedef TYPE_1__ RRDVAR ;


 scalar_t__ avl_search_lock (int *,int *) ;
 scalar_t__ simple_hash (char*) ;

__attribute__((used)) static inline RRDVAR *rrdvar_index_find(avl_tree_lock *tree, const char *name, uint32_t hash) {
    RRDVAR tmp;
    tmp.name = (char *)name;
    tmp.hash = (hash)?hash:simple_hash(tmp.name);

    return (RRDVAR *)avl_search_lock(tree, (avl *)&tmp);
}
