
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int ,int *) ;
 int EVP_PKEY_CTX_set_rsa_keygen_bits (int *,int) ;
 int EVP_PKEY_RSA ;
 int EVP_PKEY_keygen (int *,int **) ;
 int EVP_PKEY_keygen_init (int *) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;

EVP_PKEY *gen_rsa(void)
{
    EVP_PKEY_CTX *ctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    (void)(TEST_ptr(ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_RSA, ((void*)0)))
               && TEST_int_gt(EVP_PKEY_keygen_init(ctx), 0)
               && TEST_int_gt(EVP_PKEY_CTX_set_rsa_keygen_bits(ctx, 2048), 0)
               && TEST_int_gt(EVP_PKEY_keygen(ctx, &pkey), 0));
    EVP_PKEY_CTX_free(ctx);
    return pkey;
}
