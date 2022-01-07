
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nodes; scalar_t__ anyPolicy; } ;
typedef TYPE_1__ X509_POLICY_LEVEL ;


 scalar_t__ sk_X509_POLICY_NODE_num (scalar_t__) ;

int X509_policy_level_node_count(X509_POLICY_LEVEL *level)
{
    int n;
    if (!level)
        return 0;
    if (level->anyPolicy)
        n = 1;
    else
        n = 0;
    if (level->nodes)
        n += sk_X509_POLICY_NODE_num(level->nodes);
    return n;
}
