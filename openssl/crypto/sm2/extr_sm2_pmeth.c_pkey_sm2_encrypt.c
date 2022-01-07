
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* data; TYPE_2__* pkey; } ;
struct TYPE_8__ {int * md; } ;
struct TYPE_6__ {int * ec; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ SM2_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef int EC_KEY ;


 int * EVP_sm3 () ;
 int sm2_ciphertext_size (int *,int const*,size_t,size_t*) ;
 int sm2_encrypt (int *,int const*,unsigned char const*,size_t,unsigned char*,size_t*) ;

__attribute__((used)) static int pkey_sm2_encrypt(EVP_PKEY_CTX *ctx,
                            unsigned char *out, size_t *outlen,
                            const unsigned char *in, size_t inlen)
{
    EC_KEY *ec = ctx->pkey->pkey.ec;
    SM2_PKEY_CTX *dctx = ctx->data;
    const EVP_MD *md = (dctx->md == ((void*)0)) ? EVP_sm3() : dctx->md;

    if (out == ((void*)0)) {
        if (!sm2_ciphertext_size(ec, md, inlen, outlen))
            return -1;
        else
            return 1;
    }

    return sm2_encrypt(ec, md, in, inlen, out, outlen);
}
