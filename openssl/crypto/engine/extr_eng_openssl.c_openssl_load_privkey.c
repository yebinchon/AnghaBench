
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_METHOD ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int ,int *) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static EVP_PKEY *openssl_load_privkey(ENGINE *eng, const char *key_id,
                                      UI_METHOD *ui_method,
                                      void *callback_data)
{
    BIO *in;
    EVP_PKEY *key;
    fprintf(stderr, "(TEST_ENG_OPENSSL_PKEY)Loading Private key %s\n",
            key_id);
    in = BIO_new_file(key_id, "r");
    if (!in)
        return ((void*)0);
    key = PEM_read_bio_PrivateKey(in, ((void*)0), 0, ((void*)0));
    BIO_free(in);
    return key;
}
