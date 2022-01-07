
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char const* V; int blocklen; int vtmp; int md; int * ctx; } ;
struct TYPE_6__ {TYPE_2__ hash; } ;
struct TYPE_8__ {size_t seedlen; TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HASH ;
typedef TYPE_3__ RAND_DRBG ;
typedef int EVP_MD_CTX ;


 scalar_t__ EVP_DigestFinal (int *,int ,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int ,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 scalar_t__ add_bytes (TYPE_3__*,unsigned char const*,int ,int ) ;

__attribute__((used)) static int add_hash_to_v(RAND_DRBG *drbg, unsigned char inbyte,
                         const unsigned char *adin, size_t adinlen)
{
    RAND_DRBG_HASH *hash = &drbg->data.hash;
    EVP_MD_CTX *ctx = hash->ctx;

    return EVP_DigestInit_ex(ctx, hash->md, ((void*)0))
           && EVP_DigestUpdate(ctx, &inbyte, 1)
           && EVP_DigestUpdate(ctx, hash->V, drbg->seedlen)
           && (adin == ((void*)0) || EVP_DigestUpdate(ctx, adin, adinlen))
           && EVP_DigestFinal(ctx, hash->vtmp, ((void*)0))
           && add_bytes(drbg, hash->V, hash->vtmp, hash->blocklen);
}
