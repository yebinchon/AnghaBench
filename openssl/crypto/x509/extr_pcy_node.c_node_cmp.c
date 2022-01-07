
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ X509_POLICY_NODE ;
struct TYPE_5__ {int valid_policy; } ;


 int OBJ_cmp (int ,int ) ;

__attribute__((used)) static int node_cmp(const X509_POLICY_NODE *const *a,
                    const X509_POLICY_NODE *const *b)
{
    return OBJ_cmp((*a)->data->valid_policy, (*b)->data->valid_policy);
}
