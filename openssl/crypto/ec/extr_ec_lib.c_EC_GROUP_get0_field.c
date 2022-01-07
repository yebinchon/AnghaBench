
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* field; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BIGNUM ;



const BIGNUM *EC_GROUP_get0_field(const EC_GROUP *group)
{
    return group->field;
}
