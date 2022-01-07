
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_free_ex_index (int ,int) ;
 int ERR_clear_error () ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_init_crypto (int ,int *) ;

int FuzzerInitialize(int *argc, char ***argv)
{
    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
    CRYPTO_free_ex_index(0, -1);
    ERR_clear_error();
    return 1;
}
