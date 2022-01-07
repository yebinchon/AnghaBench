
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_gettable_ctx_params (int *) ;
 int EVP_CIPHER_gettable_params (int *) ;
 int EVP_CIPHER_settable_ctx_params (int *) ;
 int collect_cipher_names ;
 int do_method (int *,int ,int ,int ,int ,void*) ;

__attribute__((used)) static void do_cipher(EVP_CIPHER *cipher, void *meta)
{
    do_method(cipher, collect_cipher_names,
              EVP_CIPHER_gettable_params(cipher),
              EVP_CIPHER_gettable_ctx_params(cipher),
              EVP_CIPHER_settable_ctx_params(cipher),
              meta);
}
