
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CHACHA20_CTX ;


 int CHACHA20_BLKLEN ;
 int CHACHA20_FLAGS ;
 int CHACHA20_IVLEN ;
 int CHACHA20_KEYLEN ;
 int PROV_CIPHER_HW_chacha20 (int) ;
 int cipher_generic_initkey (int *,int,int,int,int ,int ,int ,int *) ;

void chacha20_initctx(PROV_CHACHA20_CTX *ctx)
{
    cipher_generic_initkey(ctx, CHACHA20_KEYLEN * 8,
                           CHACHA20_BLKLEN * 8,
                           CHACHA20_IVLEN * 8,
                           0, CHACHA20_FLAGS,
                           PROV_CIPHER_HW_chacha20(CHACHA20_KEYLEN * 8),
                           ((void*)0));
}
