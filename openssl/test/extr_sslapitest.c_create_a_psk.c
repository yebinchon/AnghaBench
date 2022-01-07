
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int const SSL_SESSION ;
typedef int SSL_CIPHER ;
typedef int SSL ;


 int * SSL_CIPHER_find (int *,int ) ;
 int SSL_SESSION_free (int const*) ;
 int * SSL_SESSION_new () ;
 int SSL_SESSION_set1_master_key (int const*,unsigned char const*,int) ;
 int SSL_SESSION_set_cipher (int const*,int const*) ;
 int SSL_SESSION_set_protocol_version (int const*,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;
 int TLS13_AES_256_GCM_SHA384_BYTES ;
 int TLS1_3_VERSION ;

__attribute__((used)) static SSL_SESSION *create_a_psk(SSL *ssl)
{
    const SSL_CIPHER *cipher = ((void*)0);
    const unsigned char key[] = {
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a,
        0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
        0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20,
        0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b,
        0x2c, 0x2d, 0x2e, 0x2f
    };
    SSL_SESSION *sess = ((void*)0);

    cipher = SSL_CIPHER_find(ssl, TLS13_AES_256_GCM_SHA384_BYTES);
    sess = SSL_SESSION_new();
    if (!TEST_ptr(sess)
            || !TEST_ptr(cipher)
            || !TEST_true(SSL_SESSION_set1_master_key(sess, key,
                                                      sizeof(key)))
            || !TEST_true(SSL_SESSION_set_cipher(sess, cipher))
            || !TEST_true(
                    SSL_SESSION_set_protocol_version(sess,
                                                     TLS1_3_VERSION))) {
        SSL_SESSION_free(sess);
        return ((void*)0);
    }
    return sess;
}
