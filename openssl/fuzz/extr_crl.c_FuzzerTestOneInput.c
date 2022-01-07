
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int X509_CRL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_null () ;
 int ERR_clear_error () ;
 int OPENSSL_free (unsigned char*) ;
 int X509_CRL_free (int *) ;
 int X509_CRL_print (int *,int *) ;
 int * d2i_X509_CRL (int *,unsigned char const**,size_t) ;
 int i2d_X509_CRL (int *,unsigned char**) ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    const unsigned char *p = buf;
    unsigned char *der = ((void*)0);

    X509_CRL *crl = d2i_X509_CRL(((void*)0), &p, len);
    if (crl != ((void*)0)) {
        BIO *bio = BIO_new(BIO_s_null());
        X509_CRL_print(bio, crl);
        BIO_free(bio);

        i2d_X509_CRL(crl, &der);
        OPENSSL_free(der);

        X509_CRL_free(crl);
    }
    ERR_clear_error();

    return 0;
}
