
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ OSSL_STORE_INFO ;



int OSSL_STORE_INFO_get_type(const OSSL_STORE_INFO *info)
{
    return info->type;
}
