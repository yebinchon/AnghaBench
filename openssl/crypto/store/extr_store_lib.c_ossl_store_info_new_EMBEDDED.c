
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pem_name; int * blob; } ;
struct TYPE_7__ {TYPE_2__ embedded; } ;
struct TYPE_9__ {TYPE_1__ _; } ;
typedef TYPE_3__ OSSL_STORE_INFO ;
typedef int BUF_MEM ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_strdup (char const*) ;
 int OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED ;
 int OSSL_STORE_INFO_EMBEDDED ;
 int OSSL_STORE_INFO_free (TYPE_3__*) ;
 int OSSL_STOREerr (int ,int ) ;
 TYPE_3__* store_info_new (int ,int *) ;

OSSL_STORE_INFO *ossl_store_info_new_EMBEDDED(const char *new_pem_name,
                                              BUF_MEM *embedded)
{
    OSSL_STORE_INFO *info = store_info_new(OSSL_STORE_INFO_EMBEDDED, ((void*)0));

    if (info == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    info->_.embedded.blob = embedded;
    info->_.embedded.pem_name =
        new_pem_name == ((void*)0) ? ((void*)0) : OPENSSL_strdup(new_pem_name);

    if (new_pem_name != ((void*)0) && info->_.embedded.pem_name == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_NEW_EMBEDDED,
                      ERR_R_MALLOC_FAILURE);
        OSSL_STORE_INFO_free(info);
        info = ((void*)0);
    }

    return info;
}
