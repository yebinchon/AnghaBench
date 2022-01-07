
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int * OPENSSL_CTX_get0_private_drbg (int *) ;

RAND_DRBG *RAND_DRBG_get0_private(void)
{
    return OPENSSL_CTX_get0_private_drbg(((void*)0));
}
