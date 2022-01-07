
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 scalar_t__ TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;

X509 *load_pem_cert(const char *file)
{
    X509 *cert = ((void*)0);
    BIO *bio = ((void*)0);

    if (!TEST_ptr(bio = BIO_new(BIO_s_file())))
        return ((void*)0);
    if (TEST_int_gt(BIO_read_filename(bio, file), 0))
        (void)TEST_ptr(cert = PEM_read_bio_X509(bio, ((void*)0), ((void*)0), ((void*)0)));

    BIO_free(bio);
    return cert;
}
