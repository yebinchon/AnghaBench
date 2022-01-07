
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CIPHER ;
typedef int SSL ;


 int BIO_printf (int ,char*,...) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (int ,long*) ;
 int * SSL_CIPHER_find (int *,int ) ;
 int * SSL_SESSION_new () ;
 int SSL_SESSION_set1_master_key (int *,unsigned char*,long) ;
 int SSL_SESSION_set_cipher (int *,int const*) ;
 int SSL_SESSION_set_protocol_version (int *,int ) ;
 int SSL_SESSION_up_ref (int *) ;
 int SSL_version (int *) ;
 int bio_err ;
 scalar_t__ memcmp (int ,unsigned char const*,size_t) ;
 int psk_identity ;
 int psk_key ;
 int * psksess ;
 size_t strlen (int ) ;
 int tls13_aes128gcmsha256_id ;

__attribute__((used)) static int psk_find_session_cb(SSL *ssl, const unsigned char *identity,
                               size_t identity_len, SSL_SESSION **sess)
{
    SSL_SESSION *tmpsess = ((void*)0);
    unsigned char *key;
    long key_len;
    const SSL_CIPHER *cipher = ((void*)0);

    if (strlen(psk_identity) != identity_len
            || memcmp(psk_identity, identity, identity_len) != 0) {
        *sess = ((void*)0);
        return 1;
    }

    if (psksess != ((void*)0)) {
        SSL_SESSION_up_ref(psksess);
        *sess = psksess;
        return 1;
    }

    key = OPENSSL_hexstr2buf(psk_key, &key_len);
    if (key == ((void*)0)) {
        BIO_printf(bio_err, "Could not convert PSK key '%s' to buffer\n",
                   psk_key);
        return 0;
    }


    cipher = SSL_CIPHER_find(ssl, tls13_aes128gcmsha256_id);
    if (cipher == ((void*)0)) {
        BIO_printf(bio_err, "Error finding suitable ciphersuite\n");
        OPENSSL_free(key);
        return 0;
    }

    tmpsess = SSL_SESSION_new();
    if (tmpsess == ((void*)0)
            || !SSL_SESSION_set1_master_key(tmpsess, key, key_len)
            || !SSL_SESSION_set_cipher(tmpsess, cipher)
            || !SSL_SESSION_set_protocol_version(tmpsess, SSL_version(ssl))) {
        OPENSSL_free(key);
        return 0;
    }
    OPENSSL_free(key);
    *sess = tmpsess;

    return 1;
}
