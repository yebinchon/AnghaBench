
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* seed; } ;
typedef TYPE_1__ EC_GROUP ;



unsigned char *EC_GROUP_get0_seed(const EC_GROUP *group)
{
    return group->seed;
}
