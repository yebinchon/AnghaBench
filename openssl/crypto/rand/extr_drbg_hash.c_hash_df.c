
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* vtmp; size_t blocklen; int md; int * ctx; } ;
struct TYPE_5__ {TYPE_2__ hash; } ;
struct TYPE_7__ {size_t seedlen; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HASH ;
typedef TYPE_3__ RAND_DRBG ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int ,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 unsigned char const INBYTE_IGNORE ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int hash_df(RAND_DRBG *drbg, unsigned char *out,
                   const unsigned char inbyte,
                   const unsigned char *in, size_t inlen,
                   const unsigned char *in2, size_t in2len,
                   const unsigned char *in3, size_t in3len)
{
    RAND_DRBG_HASH *hash = &drbg->data.hash;
    EVP_MD_CTX *ctx = hash->ctx;
    unsigned char *vtmp = hash->vtmp;

    unsigned char tmp[1 + 4 + 1];
    int tmp_sz = 0;
    size_t outlen = drbg->seedlen;
    size_t num_bits_returned = outlen * 8;






    tmp[tmp_sz++] = 1;

    tmp[tmp_sz++] = (unsigned char)((num_bits_returned >> 24) & 0xff);
    tmp[tmp_sz++] = (unsigned char)((num_bits_returned >> 16) & 0xff);
    tmp[tmp_sz++] = (unsigned char)((num_bits_returned >> 8) & 0xff);
    tmp[tmp_sz++] = (unsigned char)(num_bits_returned & 0xff);

    if (inbyte != INBYTE_IGNORE)
        tmp[tmp_sz++] = inbyte;


    for (;;) {




        if (!(EVP_DigestInit_ex(ctx, hash->md, ((void*)0))
                && EVP_DigestUpdate(ctx, tmp, tmp_sz)
                && EVP_DigestUpdate(ctx, in, inlen)
                && (in2 == ((void*)0) || EVP_DigestUpdate(ctx, in2, in2len))
                && (in3 == ((void*)0) || EVP_DigestUpdate(ctx, in3, in3len))))
            return 0;

        if (outlen < hash->blocklen) {
            if (!EVP_DigestFinal(ctx, vtmp, ((void*)0)))
                return 0;
            memcpy(out, vtmp, outlen);
            OPENSSL_cleanse(vtmp, hash->blocklen);
            break;
        } else if(!EVP_DigestFinal(ctx, out, ((void*)0))) {
            return 0;
        }

        outlen -= hash->blocklen;
        if (outlen == 0)
            break;

        tmp[0]++;
        out += hash->blocklen;
    }
    return 1;
}
