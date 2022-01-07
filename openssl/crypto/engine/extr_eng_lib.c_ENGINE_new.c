
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int struct_ref; int ex_data; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_EX_INDEX_ENGINE ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int ENGINE_F_ENGINE_NEW ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int RUN_ONCE (int *,int ) ;
 int do_engine_lock_init ;
 int engine_lock_init ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;

ENGINE *ENGINE_new(void)
{
    ENGINE *ret;

    if (!RUN_ONCE(&engine_lock_init, do_engine_lock_init)
        || (ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->struct_ref = 1;
    engine_ref_debug(ret, 0, 1);
    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_ENGINE, ret, &ret->ex_data)) {
        OPENSSL_free(ret);
        return ((void*)0);
    }
    return ret;
}
