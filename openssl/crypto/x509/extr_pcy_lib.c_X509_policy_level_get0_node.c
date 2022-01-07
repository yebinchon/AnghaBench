
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_POLICY_NODE ;
struct TYPE_3__ {int nodes; int * anyPolicy; } ;
typedef TYPE_1__ X509_POLICY_LEVEL ;


 int * sk_X509_POLICY_NODE_value (int ,int) ;

X509_POLICY_NODE *X509_policy_level_get0_node(X509_POLICY_LEVEL *level, int i)
{
    if (!level)
        return ((void*)0);
    if (level->anyPolicy) {
        if (i == 0)
            return level->anyPolicy;
        i--;
    }
    return sk_X509_POLICY_NODE_value(level->nodes, i);
}
