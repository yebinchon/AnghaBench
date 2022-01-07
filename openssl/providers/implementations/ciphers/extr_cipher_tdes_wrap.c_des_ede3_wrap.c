
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* iv; TYPE_1__* hw; int libctx; } ;
struct TYPE_6__ {int (* cipher ) (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;} ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int BUF_reverse (unsigned char*,int *,size_t) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int SHA1 (unsigned char const*,size_t,unsigned char*) ;
 int SHA_DIGEST_LENGTH ;
 size_t TDES_IVLEN ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memmove (unsigned char*,unsigned char const*,size_t) ;
 scalar_t__ rand_bytes_ex (int ,unsigned char*,size_t) ;
 int stub1 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;
 unsigned char* wrap_iv ;

__attribute__((used)) static int des_ede3_wrap(PROV_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    size_t ivlen = TDES_IVLEN;
    size_t icvlen = TDES_IVLEN;
    size_t len = inl + ivlen + icvlen;

    if (out == ((void*)0))
        return len;


    memmove(out + ivlen, in, inl);

    SHA1(in, inl, sha1tmp);
    memcpy(out + inl + ivlen, sha1tmp, icvlen);
    OPENSSL_cleanse(sha1tmp, SHA_DIGEST_LENGTH);

    if (rand_bytes_ex(ctx->libctx, ctx->iv, ivlen) <= 0)
        return 0;
    memcpy(out, ctx->iv, ivlen);

    ctx->hw->cipher(ctx, out + ivlen, out + ivlen, inl + ivlen);
    BUF_reverse(out, ((void*)0), len);
    memcpy(ctx->iv, wrap_iv, ivlen);
    ctx->hw->cipher(ctx, out, out, len);
    return len;
}
