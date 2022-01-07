
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* data; } ;
struct TYPE_6__ {int type; TYPE_1__ _; } ;
typedef TYPE_2__ OSSL_STORE_INFO ;


 TYPE_2__* OPENSSL_zalloc (int) ;

__attribute__((used)) static OSSL_STORE_INFO *store_info_new(int type, void *data)
{
    OSSL_STORE_INFO *info = OPENSSL_zalloc(sizeof(*info));

    if (info == ((void*)0))
        return ((void*)0);

    info->type = type;
    info->_.data = data;
    return info;
}
