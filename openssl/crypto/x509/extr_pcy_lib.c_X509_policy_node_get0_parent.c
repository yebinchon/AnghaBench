
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__ const* parent; } ;
typedef TYPE_1__ X509_POLICY_NODE ;



const X509_POLICY_NODE *X509_policy_node_get0_parent(const X509_POLICY_NODE
                                                     *node)
{
    if (!node)
        return ((void*)0);
    return node->parent;
}
