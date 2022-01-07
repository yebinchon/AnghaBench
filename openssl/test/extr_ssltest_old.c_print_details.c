
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CIPHER ;
typedef int SSL ;
typedef int EVP_PKEY ;


 int BIO_printf (int ,char*,...) ;
 int BIO_puts (int ,char*) ;
 int EVP_PKEY_free (int *) ;
 int OBJ_nid2sn (int) ;
 int SSL_CIPHER_get_name (int const*) ;
 int SSL_CIPHER_get_version (int const*) ;
 int * SSL_get_current_cipher (int *) ;
 int * SSL_get_peer_certificate (int *) ;
 scalar_t__ SSL_get_peer_signature_nid (int *,int*) ;
 scalar_t__ SSL_get_peer_tmp_key (int *,int **) ;
 int SSL_get_version (int *) ;
 int X509_free (int *) ;
 int * X509_get0_pubkey (int *) ;
 int bio_stdout ;
 int print_key_details (int ,int *) ;

__attribute__((used)) static void print_details(SSL *c_ssl, const char *prefix)
{
    const SSL_CIPHER *ciph;
    int mdnid;
    X509 *cert;
    EVP_PKEY *pkey;

    ciph = SSL_get_current_cipher(c_ssl);
    BIO_printf(bio_stdout, "%s%s, cipher %s %s",
               prefix,
               SSL_get_version(c_ssl),
               SSL_CIPHER_get_version(ciph), SSL_CIPHER_get_name(ciph));
    cert = SSL_get_peer_certificate(c_ssl);
    if (cert != ((void*)0)) {
        EVP_PKEY* pubkey = X509_get0_pubkey(cert);

        if (pubkey != ((void*)0)) {
            BIO_puts(bio_stdout, ", ");
            print_key_details(bio_stdout, pubkey);
        }
        X509_free(cert);
    }
    if (SSL_get_peer_tmp_key(c_ssl, &pkey)) {
        BIO_puts(bio_stdout, ", temp key: ");
        print_key_details(bio_stdout, pkey);
        EVP_PKEY_free(pkey);
    }
    if (SSL_get_peer_signature_nid(c_ssl, &mdnid))
        BIO_printf(bio_stdout, ", digest=%s", OBJ_nid2sn(mdnid));
    BIO_printf(bio_stdout, "\n");
}
