
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* K; size_t blocklen; unsigned char const* V; int md; int * ctx; } ;
typedef TYPE_1__ RAND_DRBG_HMAC ;
typedef int HMAC_CTX ;


 scalar_t__ HMAC_Final (int *,unsigned char const*,int *) ;
 scalar_t__ HMAC_Init_ex (int *,unsigned char const*,size_t,int ,int *) ;
 scalar_t__ HMAC_Update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int do_hmac(RAND_DRBG_HMAC *hmac, unsigned char inbyte,
                   const unsigned char *in1, size_t in1len,
                   const unsigned char *in2, size_t in2len,
                   const unsigned char *in3, size_t in3len)
{
    HMAC_CTX *ctx = hmac->ctx;

    return HMAC_Init_ex(ctx, hmac->K, hmac->blocklen, hmac->md, ((void*)0))

           && HMAC_Update(ctx, hmac->V, hmac->blocklen)
           && HMAC_Update(ctx, &inbyte, 1)
           && (in1 == ((void*)0) || in1len == 0 || HMAC_Update(ctx, in1, in1len))
           && (in2 == ((void*)0) || in2len == 0 || HMAC_Update(ctx, in2, in2len))
           && (in3 == ((void*)0) || in3len == 0 || HMAC_Update(ctx, in3, in3len))
           && HMAC_Final(ctx, hmac->K, ((void*)0))

           && HMAC_Init_ex(ctx, hmac->K, hmac->blocklen, hmac->md, ((void*)0))
           && HMAC_Update(ctx, hmac->V, hmac->blocklen)
           && HMAC_Final(ctx, hmac->V, ((void*)0));
}
