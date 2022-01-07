
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tmp ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 scalar_t__ BIO_write (int *,int const*,size_t) ;
 int ERR_clear_error () ;
 int OPENSSL_assert (int) ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_do_handshake (int *) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 scalar_t__ SSL_read (int *,int *,int) ;
 int SSL_set_bio (int *,int *,int *) ;
 int SSL_set_cipher_list (int *,char*) ;
 int SSL_set_connect_state (int *) ;
 int SSL_set_min_proto_version (int *,int ) ;
 int SSL_set_tlsext_host_name (int *,char*) ;
 int SSLv23_method () ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    SSL *client;
    BIO *in;
    BIO *out;
    SSL_CTX *ctx;

    if (len == 0)
        return 0;






    ctx = SSL_CTX_new(SSLv23_method());

    client = SSL_new(ctx);
    OPENSSL_assert(SSL_set_min_proto_version(client, 0) == 1);
    OPENSSL_assert(SSL_set_cipher_list(client, "ALL:eNULL:@SECLEVEL=0") == 1);
    SSL_set_tlsext_host_name(client, "localhost");
    in = BIO_new(BIO_s_mem());
    out = BIO_new(BIO_s_mem());
    SSL_set_bio(client, in, out);
    SSL_set_connect_state(client);
    OPENSSL_assert((size_t)BIO_write(in, buf, len) == len);
    if (SSL_do_handshake(client) == 1) {

        uint8_t tmp[1024];
        for (;;) {
            if (SSL_read(client, tmp, sizeof(tmp)) <= 0) {
                break;
            }
        }
    }
    SSL_free(client);
    ERR_clear_error();
    SSL_CTX_free(ctx);

    return 0;
}
