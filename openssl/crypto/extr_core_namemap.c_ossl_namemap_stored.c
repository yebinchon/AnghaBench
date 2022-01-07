
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;
typedef int OPENSSL_CTX ;


 int OPENSSL_CTX_NAMEMAP_INDEX ;
 int * openssl_ctx_get_data (int *,int ,int *) ;
 int stored_namemap_method ;

OSSL_NAMEMAP *ossl_namemap_stored(OPENSSL_CTX *libctx)
{
    return openssl_ctx_get_data(libctx, OPENSSL_CTX_NAMEMAP_INDEX,
                                &stored_namemap_method);
}
