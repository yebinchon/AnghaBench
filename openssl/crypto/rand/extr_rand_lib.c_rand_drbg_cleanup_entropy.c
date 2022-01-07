
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ secure; int * seed_pool; } ;
typedef TYPE_1__ RAND_DRBG ;


 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_secure_clear_free (unsigned char*,size_t) ;

void rand_drbg_cleanup_entropy(RAND_DRBG *drbg,
                               unsigned char *out, size_t outlen)
{
    if (drbg->seed_pool == ((void*)0)) {
        if (drbg->secure)
            OPENSSL_secure_clear_free(out, outlen);
        else
            OPENSSL_clear_free(out, outlen);
    }
}
