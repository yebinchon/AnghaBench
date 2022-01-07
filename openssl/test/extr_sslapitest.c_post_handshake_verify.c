
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ERROR_NONE ;
 int SSL_VERIFY_PEER ;
 int SSL_do_handshake (int *) ;
 int SSL_read (int *,int *,int ) ;
 int SSL_set_verify (int *,int ,int *) ;
 int SSL_verify_client_post_handshake (int *) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_le (int ,int ) ;
 int TEST_true (int ) ;
 int create_ssl_connection (int *,int *,int ) ;

__attribute__((used)) static int post_handshake_verify(SSL *sssl, SSL *cssl)
{
    SSL_set_verify(sssl, SSL_VERIFY_PEER, ((void*)0));
    if (!TEST_true(SSL_verify_client_post_handshake(sssl)))
        return 0;


    if (!TEST_int_eq(SSL_do_handshake(sssl), 1)
            || !TEST_int_le(SSL_read(cssl, ((void*)0), 0), 0)
            || !TEST_int_le(SSL_read(sssl, ((void*)0), 0), 0)
            || !TEST_true(create_ssl_connection(sssl, cssl,
                                                SSL_ERROR_NONE)))
        return 0;

    return 1;
}
