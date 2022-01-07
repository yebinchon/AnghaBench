
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* desc; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;


 scalar_t__ OSSL_STORE_INFO_NAME ;

const char *OSSL_STORE_INFO_get0_NAME_description(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_NAME)
        return info->_.name.desc;
    return ((void*)0);
}
