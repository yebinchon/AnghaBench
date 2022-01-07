
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 int * openssl_ctx_get_concrete (int *) ;
 int ossl_ctx_thread_stop (int *) ;

void OPENSSL_thread_stop_ex(OPENSSL_CTX *ctx)
{
    ctx = openssl_ctx_get_concrete(ctx);





    ossl_ctx_thread_stop(ctx);
}
