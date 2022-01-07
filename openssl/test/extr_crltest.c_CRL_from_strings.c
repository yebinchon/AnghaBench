
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int OPENSSL_free (char*) ;
 int * PEM_read_bio_X509_CRL (int *,int *,int *,int *) ;
 int * glue2bio (char const**,char**) ;

__attribute__((used)) static X509_CRL *CRL_from_strings(const char **pem)
{
    char *p;
    BIO *b = glue2bio(pem, &p);
    X509_CRL *crl = PEM_read_bio_X509_CRL(b, ((void*)0), ((void*)0), ((void*)0));

    OPENSSL_free(p);
    BIO_free(b);
    return crl;
}
