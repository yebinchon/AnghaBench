
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ks; } ;
struct TYPE_5__ {int (* cbc ) (unsigned char const*,unsigned char*,size_t,int *,scalar_t__) ;} ;
struct TYPE_6__ {TYPE_1__ ks; TYPE_2__ stream; } ;
typedef TYPE_3__ EVP_DES_KEY ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_ncbc_encrypt (unsigned char const*,unsigned char*,long,scalar_t__,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 scalar_t__ EVP_CIPHER_CTX_get_cipher_data (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 size_t EVP_MAXCHUNK ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int *,scalar_t__) ;

__attribute__((used)) static int des_cbc_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                          const unsigned char *in, size_t inl)
{
    EVP_DES_KEY *dat = (EVP_DES_KEY *) EVP_CIPHER_CTX_get_cipher_data(ctx);

    if (dat->stream.cbc != ((void*)0)) {
        (*dat->stream.cbc) (in, out, inl, &dat->ks.ks,
                            EVP_CIPHER_CTX_iv_noconst(ctx));
        return 1;
    }
    while (inl >= EVP_MAXCHUNK) {
        DES_ncbc_encrypt(in, out, (long)EVP_MAXCHUNK,
                         EVP_CIPHER_CTX_get_cipher_data(ctx),
                         (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                         EVP_CIPHER_CTX_encrypting(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        DES_ncbc_encrypt(in, out, (long)inl,
                         EVP_CIPHER_CTX_get_cipher_data(ctx),
                         (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                         EVP_CIPHER_CTX_encrypting(ctx));
    return 1;
}
