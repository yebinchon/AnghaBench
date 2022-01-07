
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int asn1_flag; } ;
typedef TYPE_1__ EC_GROUP ;



int EC_GROUP_get_asn1_flag(const EC_GROUP *group)
{
    return group->asn1_flag;
}
