
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,int *) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int * SSL_get_peer_certificate (int *) ;
 int TEST_ptr (int *) ;
 int X509_free (int *) ;
 int cert ;
 int privkey ;

__attribute__((used)) static int client_cert_cb(SSL *ssl, X509 **x509, EVP_PKEY **pkey)
{
    X509 *xcert, *peer;
    EVP_PKEY *privpkey;
    BIO *in = ((void*)0);


    peer = SSL_get_peer_certificate(ssl);
    if (!TEST_ptr(peer))
        return 0;
    X509_free(peer);

    in = BIO_new_file(cert, "r");
    if (!TEST_ptr(in))
        return 0;

    xcert = PEM_read_bio_X509(in, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(in);
    if (!TEST_ptr(xcert))
        return 0;

    in = BIO_new_file(privkey, "r");
    if (!TEST_ptr(in)) {
        X509_free(xcert);
        return 0;
    }

    privpkey = PEM_read_bio_PrivateKey(in, ((void*)0), ((void*)0), ((void*)0));
    BIO_free(in);
    if (!TEST_ptr(privpkey)) {
        X509_free(xcert);
        return 0;
    }

    *x509 = xcert;
    *pkey = privpkey;

    return 1;
}
