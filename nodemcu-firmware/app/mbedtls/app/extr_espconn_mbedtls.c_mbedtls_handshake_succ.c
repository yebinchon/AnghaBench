
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hostname; int * session; int * session_negotiate; int * transform_negotiate; int * handshake; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int lwIP_ASSERT (TYPE_1__*) ;
 int mbedtls_ssl_handshake_free (int *) ;
 int mbedtls_ssl_session_free (int *) ;
 int mbedtls_ssl_transform_free (int *) ;
 int mbedtls_zeroize (int *,int ) ;
 int os_free (int *) ;
 int os_strlen (int *) ;

__attribute__((used)) static void mbedtls_handshake_succ(mbedtls_ssl_context *ssl)
{
 lwIP_ASSERT(ssl);
 if( ssl->handshake )
    {
        mbedtls_ssl_handshake_free( ssl->handshake );
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
        mbedtls_ssl_session_free( ssl->session_negotiate );

        os_free( ssl->handshake );
        os_free( ssl->transform_negotiate );
        os_free( ssl->session_negotiate );
  ssl->handshake = ((void*)0);
  ssl->transform_negotiate = ((void*)0);
  ssl->session_negotiate = ((void*)0);
    }

    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        os_free( ssl->session );
  ssl->session = ((void*)0);
    }
}
