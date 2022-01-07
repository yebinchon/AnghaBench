
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;


 int SSL_SESSION_free (int *) ;
 scalar_t__ do_cache ;
 size_t new_called ;
 int ** sesscache ;

__attribute__((used)) static int new_cachesession_cb(SSL *ssl, SSL_SESSION *sess)
{
    if (do_cache) {
        sesscache[new_called] = sess;
    } else {

        SSL_SESSION_free(sess);
    }
    new_called++;

    return 1;
}
