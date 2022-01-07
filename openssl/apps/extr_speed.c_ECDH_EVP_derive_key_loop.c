
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* secret_a; size_t* outlen; int ** ecdh_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EVP_PKEY_CTX ;


 scalar_t__ COND (int ) ;
 int EVP_PKEY_derive (int *,unsigned char*,size_t*) ;
 int ** ecdh_c ;
 size_t testnum ;

__attribute__((used)) static int ECDH_EVP_derive_key_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    EVP_PKEY_CTX *ctx = tempargs->ecdh_ctx[testnum];
    unsigned char *derived_secret = tempargs->secret_a;
    int count;
    size_t *outlen = &(tempargs->outlen[testnum]);

    for (count = 0; COND(ecdh_c[testnum][0]); count++)
        EVP_PKEY_derive(ctx, derived_secret, outlen);

    return count;
}
