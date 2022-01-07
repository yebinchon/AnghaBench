
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_CIPHER_meth_free (int *) ;
 int * r4_cipher ;

__attribute__((used)) static void test_r4_cipher_destroy(void)
{
    EVP_CIPHER_meth_free(r4_cipher);
    r4_cipher = ((void*)0);
}
