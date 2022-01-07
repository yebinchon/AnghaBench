
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* ssl; unsigned char* write_buf; unsigned char* read_buf; int write_buf_len; int read_buf_len; } ;
typedef int SSL_CTX ;
typedef unsigned char SSL ;
typedef TYPE_1__ PEER ;


 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_zalloc (int const) ;
 int SSL_free (unsigned char*) ;
 unsigned char* SSL_new (int *) ;
 int TEST_ptr (unsigned char*) ;

__attribute__((used)) static int create_peer(PEER *peer, SSL_CTX *ctx)
{
    static const int peer_buffer_size = 64 * 1024;
    SSL *ssl = ((void*)0);
    unsigned char *read_buf = ((void*)0), *write_buf = ((void*)0);

    if (!TEST_ptr(ssl = SSL_new(ctx))
            || !TEST_ptr(write_buf = OPENSSL_zalloc(peer_buffer_size))
            || !TEST_ptr(read_buf = OPENSSL_zalloc(peer_buffer_size)))
        goto err;

    peer->ssl = ssl;
    peer->write_buf = write_buf;
    peer->read_buf = read_buf;
    peer->write_buf_len = peer->read_buf_len = peer_buffer_size;
    return 1;
err:
    SSL_free(ssl);
    OPENSSL_free(write_buf);
    OPENSSL_free(read_buf);
    return 0;
}
