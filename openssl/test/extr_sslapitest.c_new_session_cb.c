
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;


 int SSL_SESSION_free (int *) ;
 int new_called ;

__attribute__((used)) static int new_session_cb(SSL *ssl, SSL_SESSION *sess)
{
    new_called++;




    SSL_SESSION_free(sess);
    return 1;
}
