
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * logs; } ;
typedef TYPE_1__ CTLOG_STORE ;


 int CT_F_CTLOG_STORE_NEW ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int * sk_CTLOG_new_null () ;

CTLOG_STORE *CTLOG_STORE_new(void)
{
    CTLOG_STORE *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        CTerr(CT_F_CTLOG_STORE_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->logs = sk_CTLOG_new_null();
    if (ret->logs == ((void*)0))
        goto err;

    return ret;
err:
    OPENSSL_free(ret);
    return ((void*)0);
}
