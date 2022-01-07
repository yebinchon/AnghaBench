
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * public_key; int log_id; int * name; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ CTLOG ;


 int CTLOG_free (TYPE_1__*) ;
 int CT_F_CTLOG_NEW ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int ct_v1_log_id_from_pkey (int *,int ) ;

CTLOG *CTLOG_new(EVP_PKEY *public_key, const char *name)
{
    CTLOG *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->name = OPENSSL_strdup(name);
    if (ret->name == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (ct_v1_log_id_from_pkey(public_key, ret->log_id) != 1)
        goto err;

    ret->public_key = public_key;
    return ret;
err:
    CTLOG_free(ret);
    return ((void*)0);
}
