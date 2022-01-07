
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void PROV_DES_CTX ;
typedef int PROV_CIPHER_HW ;


 void* OPENSSL_zalloc (int) ;
 int cipher_generic_initkey (void*,size_t,size_t,size_t,unsigned int,int ,int const*,void*) ;

__attribute__((used)) static void *des_newctx(void *provctx, size_t kbits, size_t blkbits,
                        size_t ivbits, unsigned int mode, uint64_t flags,
                        const PROV_CIPHER_HW *hw)
{
    PROV_DES_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx != ((void*)0))
        cipher_generic_initkey(ctx, kbits, blkbits, ivbits, mode, flags, hw,
                               provctx);
    return ctx;
}
