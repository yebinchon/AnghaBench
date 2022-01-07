
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* V; size_t blocklen; int md; int K; int * ctx; } ;
struct TYPE_6__ {TYPE_2__ hmac; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_2__ RAND_DRBG_HMAC ;
typedef TYPE_3__ RAND_DRBG ;
typedef int HMAC_CTX ;


 int HMAC_Final (int *,unsigned char*,int *) ;
 int HMAC_Init_ex (int *,int ,size_t,int ,int *) ;
 int HMAC_Update (int *,unsigned char const*,size_t) ;
 int drbg_hmac_update (TYPE_3__*,unsigned char const*,size_t,int *,int ,int *,int ) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int drbg_hmac_generate(RAND_DRBG *drbg,
                              unsigned char *out, size_t outlen,
                              const unsigned char *adin, size_t adin_len)
{
    RAND_DRBG_HMAC *hmac = &drbg->data.hmac;
    HMAC_CTX *ctx = hmac->ctx;
    const unsigned char *temp = hmac->V;


    if (adin != ((void*)0)
            && adin_len > 0
            && !drbg_hmac_update(drbg, adin, adin_len, ((void*)0), 0, ((void*)0), 0))
        return 0;
    for (;;) {
        if (!HMAC_Init_ex(ctx, hmac->K, hmac->blocklen, hmac->md, ((void*)0))
                || !HMAC_Update(ctx, temp, hmac->blocklen))
            return 0;

        if (outlen > hmac->blocklen) {
            if (!HMAC_Final(ctx, out, ((void*)0)))
                return 0;
            temp = out;
        } else {
            if (!HMAC_Final(ctx, hmac->V, ((void*)0)))
                return 0;
            memcpy(out, hmac->V, outlen);
            break;
        }
        out += hmac->blocklen;
        outlen -= hmac->blocklen;
    }

    if (!drbg_hmac_update(drbg, adin, adin_len, ((void*)0), 0, ((void*)0), 0))
        return 0;

    return 1;
}
