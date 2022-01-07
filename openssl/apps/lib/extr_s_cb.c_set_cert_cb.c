
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* prev; int * chain; scalar_t__ build_chain; int key; int cert; struct TYPE_2__* next; } ;
typedef TYPE_1__ SSL_EXCERT ;
typedef int SSL ;


 int BIO_printf (int ,char*,int) ;
 int BIO_puts (int ,char*) ;
 int CERT_PKEY_VALID ;
 int SSL_build_cert_chain (int *,int ) ;
 int SSL_certs_clear (int *) ;
 int SSL_check_chain (int *,int ,int ,int *) ;
 int SSL_set1_chain (int *,int *) ;
 int SSL_use_PrivateKey (int *,int ) ;
 int SSL_use_certificate (int *,int ) ;
 int X509_NAME_print_ex (int ,int ,int ,int ) ;
 int X509_get_subject_name (int ) ;
 int bio_err ;
 int get_nameopt () ;
 int print_chain_flags (int *,int) ;

__attribute__((used)) static int set_cert_cb(SSL *ssl, void *arg)
{
    int i, rv;
    SSL_EXCERT *exc = arg;
    SSL_certs_clear(ssl);

    if (exc == ((void*)0))
        return 1;





    while (exc->next != ((void*)0))
        exc = exc->next;

    i = 0;

    while (exc != ((void*)0)) {
        i++;
        rv = SSL_check_chain(ssl, exc->cert, exc->key, exc->chain);
        BIO_printf(bio_err, "Checking cert chain %d:\nSubject: ", i);
        X509_NAME_print_ex(bio_err, X509_get_subject_name(exc->cert), 0,
                           get_nameopt());
        BIO_puts(bio_err, "\n");
        print_chain_flags(ssl, rv);
        if (rv & CERT_PKEY_VALID) {
            if (!SSL_use_certificate(ssl, exc->cert)
                    || !SSL_use_PrivateKey(ssl, exc->key)) {
                return 0;
            }





            if (exc->build_chain) {
                if (!SSL_build_cert_chain(ssl, 0))
                    return 0;
            } else if (exc->chain != ((void*)0)) {
                SSL_set1_chain(ssl, exc->chain);
            }
        }
        exc = exc->prev;
    }
    return 1;
}
