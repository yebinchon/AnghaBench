
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_GROUP_set_asn1_flag (int *,int) ;

void EC_KEY_set_asn1_flag(EC_KEY *key, int flag)
{
    if (key->group != ((void*)0))
        EC_GROUP_set_asn1_flag(key->group, flag);
}
