
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ enc; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 size_t EVP_MAXCHUNK ;
 int des_ede3_unwrap (TYPE_1__*,unsigned char*,unsigned char const*,size_t) ;
 int des_ede3_wrap (TYPE_1__*,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int tdes_wrap_cipher_internal(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                     const unsigned char *in, size_t inl)
{





    if (inl >= EVP_MAXCHUNK || inl % 8)
        return -1;
    if (ctx->enc)
        return des_ede3_wrap(ctx, out, in, inl);
    else
        return des_ede3_unwrap(ctx, out, in, inl);
}
