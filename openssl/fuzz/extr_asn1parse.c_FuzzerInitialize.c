
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_new_file (char*,char*) ;
 int CRYPTO_free_ex_index (int ,int) ;
 int ERR_clear_error () ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_init_crypto (int ,int *) ;
 int bio_out ;

int FuzzerInitialize(int *argc, char ***argv)
{
    bio_out = BIO_new_file("/dev/null", "w");
    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
    ERR_clear_error();
    CRYPTO_free_ex_index(0, -1);
    return 1;
}
