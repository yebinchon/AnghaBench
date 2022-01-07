
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_free (int *) ;

void EVP_CIPHER_meth_free(EVP_CIPHER *cipher)
{
    EVP_CIPHER_free(cipher);
}
