
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dynamic_data_ctx ;
typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_DYNAMIC_GET_DATA_CTX ;
 int ENGINE_R_NO_INDEX ;
 scalar_t__ ENGINE_get_ex_data (int *,int) ;
 int ENGINE_get_ex_new_index (int ,int *,int *,int *,int ) ;
 int ENGINEerr (int ,int ) ;
 int dynamic_data_ctx_free_func ;
 int dynamic_ex_data_idx ;
 int dynamic_set_data_ctx (int *,int **) ;
 int global_engine_lock ;

__attribute__((used)) static dynamic_data_ctx *dynamic_get_data_ctx(ENGINE *e)
{
    dynamic_data_ctx *ctx;
    if (dynamic_ex_data_idx < 0) {





        int new_idx = ENGINE_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                              dynamic_data_ctx_free_func);
        if (new_idx == -1) {
            ENGINEerr(ENGINE_F_DYNAMIC_GET_DATA_CTX, ENGINE_R_NO_INDEX);
            return ((void*)0);
        }
        CRYPTO_THREAD_write_lock(global_engine_lock);

        if (dynamic_ex_data_idx < 0) {

            dynamic_ex_data_idx = new_idx;
            new_idx = -1;
        }
        CRYPTO_THREAD_unlock(global_engine_lock);




    }
    ctx = (dynamic_data_ctx *)ENGINE_get_ex_data(e, dynamic_ex_data_idx);

    if ((ctx == ((void*)0)) && !dynamic_set_data_ctx(e, &ctx))

        return ((void*)0);
    return ctx;
}
