
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* DYNAMIC_F1; char* DYNAMIC_F2; int dir_load; int * dirs; } ;
typedef TYPE_1__ dynamic_data_ctx ;
typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_DYNAMIC_SET_DATA_CTX ;
 scalar_t__ ENGINE_get_ex_data (int *,int ) ;
 int ENGINE_set_ex_data (int *,int ,TYPE_1__*) ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int dynamic_ex_data_idx ;
 int global_engine_lock ;
 int sk_OPENSSL_STRING_free (int *) ;
 int * sk_OPENSSL_STRING_new_null () ;

__attribute__((used)) static int dynamic_set_data_ctx(ENGINE *e, dynamic_data_ctx **ctx)
{
    dynamic_data_ctx *c = OPENSSL_zalloc(sizeof(*c));
    int ret = 1;

    if (c == ((void*)0)) {
        ENGINEerr(ENGINE_F_DYNAMIC_SET_DATA_CTX, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    c->dirs = sk_OPENSSL_STRING_new_null();
    if (c->dirs == ((void*)0)) {
        ENGINEerr(ENGINE_F_DYNAMIC_SET_DATA_CTX, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(c);
        return 0;
    }
    c->DYNAMIC_F1 = "v_check";
    c->DYNAMIC_F2 = "bind_engine";
    c->dir_load = 1;
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if ((*ctx = (dynamic_data_ctx *)ENGINE_get_ex_data(e,
                                                       dynamic_ex_data_idx))
        == ((void*)0)) {

        ret = ENGINE_set_ex_data(e, dynamic_ex_data_idx, c);
        if (ret) {
            *ctx = c;
            c = ((void*)0);
        }
    }
    CRYPTO_THREAD_unlock(global_engine_lock);




    if (c)
        sk_OPENSSL_STRING_free(c->dirs);
    OPENSSL_free(c);
    return ret;
}
