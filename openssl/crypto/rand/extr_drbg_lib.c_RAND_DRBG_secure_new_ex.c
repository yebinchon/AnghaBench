
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;
typedef int OPENSSL_CTX ;


 int * rand_drbg_new (int *,int,int,unsigned int,int *) ;

RAND_DRBG *RAND_DRBG_secure_new_ex(OPENSSL_CTX *ctx, int type,
                                   unsigned int flags, RAND_DRBG *parent)
{
    return rand_drbg_new(ctx, 1, type, flags, parent);
}
