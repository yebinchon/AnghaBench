
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_null () ;
 int ERR_clear_error () ;
 int OPENSSL_free (unsigned char*) ;
 int X509_free (int *) ;
 int X509_print (int *,int *) ;
 int * d2i_X509 (int *,unsigned char const**,size_t) ;
 int i2d_X509 (int *,unsigned char**) ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    const unsigned char *p = buf;
    unsigned char *der = ((void*)0);

    X509 *x509 = d2i_X509(((void*)0), &p, len);
    if (x509 != ((void*)0)) {
        BIO *bio = BIO_new(BIO_s_null());

        X509_print(bio, x509);
        BIO_free(bio);

        i2d_X509(x509, &der);
        OPENSSL_free(der);

        X509_free(x509);
    }
    ERR_clear_error();
    return 0;
}
