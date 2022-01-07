
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dane_ctx_st {scalar_t__ mdmax; int * mdord; int * mdevp; } ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void dane_ctx_final(struct dane_ctx_st *dctx)
{
    OPENSSL_free(dctx->mdevp);
    dctx->mdevp = ((void*)0);

    OPENSSL_free(dctx->mdord);
    dctx->mdord = ((void*)0);
    dctx->mdmax = 0;
}
