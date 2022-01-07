
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;

EVP_PKEY *load_pem_key(const char *file)
{
    EVP_PKEY *key = ((void*)0);
    BIO *bio = ((void*)0);

    if (!TEST_ptr(bio = BIO_new(BIO_s_file())))
        return ((void*)0);
    if (TEST_int_gt(BIO_read_filename(bio, file), 0))
        (void)TEST_ptr(key = PEM_read_bio_PrivateKey(bio, ((void*)0), ((void*)0), ((void*)0)));

    BIO_free(bio);
    return key;
}
