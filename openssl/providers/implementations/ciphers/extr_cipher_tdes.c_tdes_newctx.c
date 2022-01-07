
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void PROV_TDES_CTX ;
typedef int PROV_CIPHER_HW ;


 void* OPENSSL_zalloc (int) ;
 int cipher_generic_initkey (void*,size_t,size_t,size_t,int,int ,int const*,void*) ;

void *tdes_newctx(void *provctx, int mode, size_t kbits, size_t blkbits,
                  size_t ivbits, uint64_t flags, const PROV_CIPHER_HW *hw)
{
    PROV_TDES_CTX *tctx = OPENSSL_zalloc(sizeof(*tctx));

    if (tctx != ((void*)0))
        cipher_generic_initkey(tctx, kbits, blkbits, ivbits, mode, flags, hw,
                               provctx);
    return tctx;
}
