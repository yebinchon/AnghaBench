
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CIPHER ;
typedef int SSL ;


 int BIO_printf (int ,char*,int ) ;
 int BIO_puts (int ,char*) ;
 int OBJ_nid2sn (int) ;
 int SSL_CIPHER_get_name (int const*) ;
 int * SSL_get_current_cipher (int *) ;
 int * SSL_get_peer_certificate (int *) ;
 scalar_t__ SSL_get_peer_signature_nid (int *,int*) ;
 scalar_t__ SSL_get_peer_signature_type_nid (int *,int*) ;
 int SSL_get_version (int *) ;
 scalar_t__ SSL_is_server (int *) ;
 int X509_NAME_print_ex (int ,int ,int ,int ) ;
 int X509_free (int *) ;
 int X509_get_subject_name (int *) ;
 int bio_err ;
 int do_print_sigalgs (int ,int *,int ) ;
 int get_nameopt () ;
 int get_sigtype (int) ;
 int print_raw_cipherlist (int *) ;
 int print_verify_detail (int *,int ) ;
 int ssl_print_groups (int ,int *,int) ;
 int ssl_print_point_formats (int ,int *) ;
 int ssl_print_tmp_key (int ,int *) ;

void print_ssl_summary(SSL *s)
{
    const SSL_CIPHER *c;
    X509 *peer;

    BIO_printf(bio_err, "Protocol version: %s\n", SSL_get_version(s));
    print_raw_cipherlist(s);
    c = SSL_get_current_cipher(s);
    BIO_printf(bio_err, "Ciphersuite: %s\n", SSL_CIPHER_get_name(c));
    do_print_sigalgs(bio_err, s, 0);
    peer = SSL_get_peer_certificate(s);
    if (peer != ((void*)0)) {
        int nid;

        BIO_puts(bio_err, "Peer certificate: ");
        X509_NAME_print_ex(bio_err, X509_get_subject_name(peer),
                           0, get_nameopt());
        BIO_puts(bio_err, "\n");
        if (SSL_get_peer_signature_nid(s, &nid))
            BIO_printf(bio_err, "Hash used: %s\n", OBJ_nid2sn(nid));
        if (SSL_get_peer_signature_type_nid(s, &nid))
            BIO_printf(bio_err, "Signature type: %s\n", get_sigtype(nid));
        print_verify_detail(s, bio_err);
    } else {
        BIO_puts(bio_err, "No peer certificate\n");
    }
    X509_free(peer);

    ssl_print_point_formats(bio_err, s);
    if (SSL_is_server(s))
        ssl_print_groups(bio_err, s, 1);
    else
        ssl_print_tmp_key(bio_err, s);




}
