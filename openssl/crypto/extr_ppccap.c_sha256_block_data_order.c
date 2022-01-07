
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_ppccap_P ;
 int PPC_CRYPTO207 ;
 int sha256_block_p8 (void*,void const*,size_t) ;
 int sha256_block_ppc (void*,void const*,size_t) ;

void sha256_block_data_order(void *ctx, const void *inp, size_t len)
{
    OPENSSL_ppccap_P & PPC_CRYPTO207 ? sha256_block_p8(ctx, inp, len) :
        sha256_block_ppc(ctx, inp, len);
}
