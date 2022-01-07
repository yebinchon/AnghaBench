
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ks; } ;
struct TYPE_5__ {int (* cbc ) (unsigned char const*,unsigned char*,size_t,int ,scalar_t__) ;} ;
struct TYPE_7__ {int ks3; int ks2; int ks1; TYPE_2__ ks; TYPE_1__ stream; } ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;
typedef TYPE_3__ DES_EDE_KEY ;


 int DES_ede3_cbc_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int *,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 size_t EVP_MAXCHUNK ;
 TYPE_3__* data (int *) ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int ,scalar_t__) ;

__attribute__((used)) static int des_ede_cbc_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                              const unsigned char *in, size_t inl)
{
    DES_EDE_KEY *dat = data(ctx);

    if (dat->stream.cbc != ((void*)0)) {
        (*dat->stream.cbc) (in, out, inl, dat->ks.ks,
                            EVP_CIPHER_CTX_iv_noconst(ctx));
        return 1;
    }

    while (inl >= EVP_MAXCHUNK) {
        DES_ede3_cbc_encrypt(in, out, (long)EVP_MAXCHUNK,
                             &dat->ks1, &dat->ks2, &dat->ks3,
                             (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                             EVP_CIPHER_CTX_encrypting(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        DES_ede3_cbc_encrypt(in, out, (long)inl,
                             &dat->ks1, &dat->ks2, &dat->ks3,
                             (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                             EVP_CIPHER_CTX_encrypting(ctx));
    return 1;
}
