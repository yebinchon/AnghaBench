
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlevel; int * levels; } ;
typedef TYPE_1__ X509_POLICY_TREE ;
typedef int X509_POLICY_LEVEL ;



X509_POLICY_LEVEL *X509_policy_tree_get0_level(const X509_POLICY_TREE *tree,
                                               int i)
{
    if (!tree || (i < 0) || (i >= tree->nlevel))
        return ((void*)0);
    return tree->levels + i;
}
