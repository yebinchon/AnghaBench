
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t seed_len; } ;
typedef TYPE_1__ EC_GROUP ;



size_t EC_GROUP_get_seed_len(const EC_GROUP *group)
{
    return group->seed_len;
}
