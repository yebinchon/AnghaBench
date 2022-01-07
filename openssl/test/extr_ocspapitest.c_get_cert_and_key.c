
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int X509_free (int *) ;
 int certstr ;
 int privkeystr ;

__attribute__((used)) static int get_cert_and_key(X509 **cert_out, EVP_PKEY **key_out)
{
    BIO *certbio, *keybio;
    X509 *cert = ((void*)0);
    EVP_PKEY *key = ((void*)0);

    if (!TEST_ptr(certbio = BIO_new_file(certstr, "r")))
        return 0;
    cert = PEM_read_bio_X509(certbio, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(certbio);
    if (!TEST_ptr(keybio = BIO_new_file(privkeystr, "r")))
        goto end;
    key = PEM_read_bio_PrivateKey(keybio, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(keybio);
    if (!TEST_ptr(cert) || !TEST_ptr(key))
        goto end;
    *cert_out = cert;
    *key_out = key;
    return 1;
 end:
    X509_free(cert);
    EVP_PKEY_free(key);
    return 0;
}
