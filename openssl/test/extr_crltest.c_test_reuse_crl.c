
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * CRL_from_strings (int ) ;
 int OPENSSL_free (char*) ;
 int * PEM_read_bio_X509_CRL (int *,int **,int *,int *) ;
 int X509_CRL_free (int *) ;
 int * glue2bio (int ,char**) ;
 int kBasicCRL ;
 int kRevokedCRL ;

__attribute__((used)) static int test_reuse_crl(void)
{
    X509_CRL *reused_crl = CRL_from_strings(kBasicCRL);
    char *p;
    BIO *b = glue2bio(kRevokedCRL, &p);

    reused_crl = PEM_read_bio_X509_CRL(b, &reused_crl, ((void*)0), ((void*)0));

    OPENSSL_free(p);
    BIO_free(b);
    X509_CRL_free(reused_crl);
    return 1;
}
