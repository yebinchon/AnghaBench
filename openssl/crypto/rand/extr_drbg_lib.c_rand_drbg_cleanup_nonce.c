
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int OPENSSL_clear_free (unsigned char*,size_t) ;

void rand_drbg_cleanup_nonce(RAND_DRBG *drbg,
                             unsigned char *out, size_t outlen)
{
    OPENSSL_clear_free(out, outlen);
}
