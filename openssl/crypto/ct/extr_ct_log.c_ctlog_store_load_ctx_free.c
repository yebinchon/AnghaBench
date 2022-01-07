
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTLOG_STORE_LOAD_CTX ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void ctlog_store_load_ctx_free(CTLOG_STORE_LOAD_CTX* ctx)
{
    OPENSSL_free(ctx);
}
