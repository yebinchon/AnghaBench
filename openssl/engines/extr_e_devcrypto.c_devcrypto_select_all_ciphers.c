
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OSSL_NELEM (int ) ;
 int cipher_data ;

__attribute__((used)) static void devcrypto_select_all_ciphers(int *cipher_list)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
        cipher_list[i] = 1;
}
