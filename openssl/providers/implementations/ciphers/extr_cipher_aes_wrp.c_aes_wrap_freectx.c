
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_WRAP_CTX ;


 int OPENSSL_clear_free (int *,int) ;

__attribute__((used)) static void aes_wrap_freectx(void *vctx)
{
    PROV_AES_WRAP_CTX *wctx = (PROV_AES_WRAP_CTX *)vctx;

    OPENSSL_clear_free(wctx, sizeof(*wctx));
}
