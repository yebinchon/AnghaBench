
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int OPENSSL_free (char*) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int * glue2bio (char const**,char**) ;

__attribute__((used)) static X509 *X509_from_strings(const char **pem)
{
    char *p;
    BIO *b = glue2bio(pem, &p);
    X509 *x = PEM_read_bio_X509(b, ((void*)0), ((void*)0), ((void*)0));

    OPENSSL_free(p);
    BIO_free(b);
    return x;
}
