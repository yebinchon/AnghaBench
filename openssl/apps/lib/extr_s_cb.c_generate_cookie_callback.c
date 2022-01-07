
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port ;
typedef int SSL ;
typedef int BIO_ADDR ;


 int BIO_ADDR_free (int *) ;
 int * BIO_ADDR_new () ;
 int BIO_ADDR_rawaddress (int *,unsigned char*,size_t*) ;
 unsigned short BIO_ADDR_rawport (int *) ;
 int BIO_dgram_get_peer (int ,int *) ;
 int BIO_printf (int ,char*) ;
 int COOKIE_SECRET_LENGTH ;
 int EVP_sha1 () ;
 int HMAC (int ,int ,int ,unsigned char*,size_t,unsigned char*,unsigned int*) ;
 int OPENSSL_assert (int) ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ RAND_bytes (int ,int ) ;
 int SSL_get_rbio (int *) ;
 scalar_t__ SSL_is_dtls (int *) ;
 unsigned char* app_malloc (size_t,char*) ;
 int bio_err ;
 int cookie_initialized ;
 int cookie_secret ;
 int memcpy (unsigned char*,unsigned short*,int) ;
 int * ourpeer ;

int generate_cookie_callback(SSL *ssl, unsigned char *cookie,
                             unsigned int *cookie_len)
{
    unsigned char *buffer;
    size_t length = 0;
    unsigned short port;
    BIO_ADDR *lpeer = ((void*)0), *peer = ((void*)0);


    if (!cookie_initialized) {
        if (RAND_bytes(cookie_secret, COOKIE_SECRET_LENGTH) <= 0) {
            BIO_printf(bio_err, "error setting random cookie secret\n");
            return 0;
        }
        cookie_initialized = 1;
    }

    if (SSL_is_dtls(ssl)) {
        lpeer = peer = BIO_ADDR_new();
        if (peer == ((void*)0)) {
            BIO_printf(bio_err, "memory full\n");
            return 0;
        }


        (void)BIO_dgram_get_peer(SSL_get_rbio(ssl), peer);
    } else {
        peer = ourpeer;
    }


    if (!BIO_ADDR_rawaddress(peer, ((void*)0), &length)) {
        BIO_printf(bio_err, "Failed getting peer address\n");
        return 0;
    }
    OPENSSL_assert(length != 0);
    port = BIO_ADDR_rawport(peer);
    length += sizeof(port);
    buffer = app_malloc(length, "cookie generate buffer");

    memcpy(buffer, &port, sizeof(port));
    BIO_ADDR_rawaddress(peer, buffer + sizeof(port), ((void*)0));


    HMAC(EVP_sha1(), cookie_secret, COOKIE_SECRET_LENGTH,
         buffer, length, cookie, cookie_len);

    OPENSSL_free(buffer);
    BIO_ADDR_free(lpeer);

    return 1;
}
