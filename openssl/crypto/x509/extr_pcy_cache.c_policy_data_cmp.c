
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valid_policy; } ;
typedef TYPE_1__ X509_POLICY_DATA ;


 int OBJ_cmp (int ,int ) ;

__attribute__((used)) static int policy_data_cmp(const X509_POLICY_DATA *const *a,
                           const X509_POLICY_DATA *const *b)
{
    return OBJ_cmp((*a)->valid_policy, (*b)->valid_policy);
}
