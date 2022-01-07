
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * order; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_num_bits (int *) ;

int ec_group_simple_order_bits(const EC_GROUP *group)
{
    if (group->order == ((void*)0))
        return 0;
    return BN_num_bits(group->order);
}
