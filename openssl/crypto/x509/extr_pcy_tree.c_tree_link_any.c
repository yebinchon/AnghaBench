
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_POLICY_TREE ;
typedef int X509_POLICY_NODE ;
struct TYPE_8__ {scalar_t__ anyPolicy; int nodes; } ;
typedef TYPE_1__ X509_POLICY_LEVEL ;
struct TYPE_9__ {int anyPolicy; } ;
typedef TYPE_2__ X509_POLICY_CACHE ;


 int * level_add_node (TYPE_1__*,int ,scalar_t__,int *) ;
 int sk_X509_POLICY_NODE_num (int ) ;
 int * sk_X509_POLICY_NODE_value (int ,int) ;
 int tree_link_unmatched (TYPE_1__*,TYPE_2__ const*,int *,int *) ;

__attribute__((used)) static int tree_link_any(X509_POLICY_LEVEL *curr,
                         const X509_POLICY_CACHE *cache,
                         X509_POLICY_TREE *tree)
{
    int i;
    X509_POLICY_NODE *node;
    X509_POLICY_LEVEL *last = curr - 1;

    for (i = 0; i < sk_X509_POLICY_NODE_num(last->nodes); i++) {
        node = sk_X509_POLICY_NODE_value(last->nodes, i);

        if (!tree_link_unmatched(curr, cache, node, tree))
            return 0;
    }

    if (last->anyPolicy &&
        level_add_node(curr, cache->anyPolicy, last->anyPolicy, ((void*)0)) == ((void*)0))
        return 0;
    return 1;
}
