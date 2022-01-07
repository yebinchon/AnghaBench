
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCT_CTX ;


 int CT_F_SCT_CTX_NEW ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

SCT_CTX *SCT_CTX_new(void)
{
    SCT_CTX *sctx = OPENSSL_zalloc(sizeof(*sctx));

    if (sctx == ((void*)0))
        CTerr(CT_F_SCT_CTX_NEW, ERR_R_MALLOC_FAILURE);

    return sctx;
}
