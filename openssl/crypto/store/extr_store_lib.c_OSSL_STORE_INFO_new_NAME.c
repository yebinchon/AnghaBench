
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; int * desc; } ;
struct TYPE_7__ {TYPE_1__ name; } ;
struct TYPE_8__ {TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;


 int ERR_R_MALLOC_FAILURE ;
 int OSSL_STORE_F_OSSL_STORE_INFO_NEW_NAME ;
 int OSSL_STORE_INFO_NAME ;
 int OSSL_STOREerr (int ,int ) ;
 TYPE_3__* store_info_new (int ,int *) ;

OSSL_STORE_INFO *OSSL_STORE_INFO_new_NAME(char *name)
{
    OSSL_STORE_INFO *info = store_info_new(OSSL_STORE_INFO_NAME, ((void*)0));

    if (info == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_NEW_NAME,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    info->_.name.name = name;
    info->_.name.desc = ((void*)0);

    return info;
}
