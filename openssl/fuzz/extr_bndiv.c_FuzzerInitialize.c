
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_CTX_new () ;
 void* BN_new () ;
 int ERR_clear_error () ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_init_crypto (int ,int *) ;
 void* b1 ;
 void* b2 ;
 void* b3 ;
 void* b4 ;
 void* b5 ;
 int ctx ;

int FuzzerInitialize(int *argc, char ***argv)
{
    b1 = BN_new();
    b2 = BN_new();
    b3 = BN_new();
    b4 = BN_new();
    b5 = BN_new();
    ctx = BN_CTX_new();

    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
    ERR_clear_error();

    return 1;
}
