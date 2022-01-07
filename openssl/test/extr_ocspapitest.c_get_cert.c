
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int X509_free (int *) ;
 int certstr ;

__attribute__((used)) static int get_cert(X509 **cert_out)
{
    BIO *certbio;
    X509 *cert = ((void*)0);

    if (!TEST_ptr(certbio = BIO_new_file(certstr, "r")))
        return 0;
    cert = PEM_read_bio_X509(certbio, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(certbio);
    if (!TEST_ptr(cert))
        goto end;
    *cert_out = cert;
    return 1;
 end:
    X509_free(cert);
    return 0;
}
