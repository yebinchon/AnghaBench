
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* vtmp; unsigned char* V; size_t blocklen; int ctx; int md; } ;
struct TYPE_6__ {TYPE_2__ hash; } ;
struct TYPE_8__ {size_t seedlen; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HASH ;
typedef TYPE_3__ RAND_DRBG ;


 int EVP_DigestFinal (int ,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int ,int ,int *) ;
 int EVP_DigestUpdate (int ,unsigned char*,size_t) ;
 int add_bytes (TYPE_3__*,unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int hash_gen(RAND_DRBG *drbg, unsigned char *out, size_t outlen)
{
    RAND_DRBG_HASH *hash = &drbg->data.hash;
    unsigned char one = 1;

    if (outlen == 0)
        return 1;
    memcpy(hash->vtmp, hash->V, drbg->seedlen);
    for(;;) {
        if (!EVP_DigestInit_ex(hash->ctx, hash->md, ((void*)0))
                || !EVP_DigestUpdate(hash->ctx, hash->vtmp, drbg->seedlen))
            return 0;

        if (outlen < hash->blocklen) {
            if (!EVP_DigestFinal(hash->ctx, hash->vtmp, ((void*)0)))
                return 0;
            memcpy(out, hash->vtmp, outlen);
            return 1;
        } else {
            if (!EVP_DigestFinal(hash->ctx, out, ((void*)0)))
                return 0;
            outlen -= hash->blocklen;
            if (outlen == 0)
                break;
            out += hash->blocklen;
        }
        add_bytes(drbg, hash->vtmp, &one, 1);
    }
    return 1;
}
