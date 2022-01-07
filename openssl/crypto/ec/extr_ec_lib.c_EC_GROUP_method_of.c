
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* meth; } ;
typedef int EC_METHOD ;
typedef TYPE_1__ EC_GROUP ;



const EC_METHOD *EC_GROUP_method_of(const EC_GROUP *group)
{
    return group->meth;
}
