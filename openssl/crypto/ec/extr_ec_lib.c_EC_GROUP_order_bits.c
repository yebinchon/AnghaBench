
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* group_order_bits ) (TYPE_2__ const*) ;} ;
typedef TYPE_2__ EC_GROUP ;


 int stub1 (TYPE_2__ const*) ;

int EC_GROUP_order_bits(const EC_GROUP *group)
{
    return group->meth->group_order_bits(group);
}
