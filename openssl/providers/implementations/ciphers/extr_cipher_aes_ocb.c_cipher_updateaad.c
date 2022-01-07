
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_OCB_CTX ;


 int aes_generic_ocb_setaad (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int cipher_updateaad(PROV_AES_OCB_CTX *ctx, const unsigned char *in,
                            unsigned char *out, size_t len)
{
    return aes_generic_ocb_setaad(ctx, in, len);
}
