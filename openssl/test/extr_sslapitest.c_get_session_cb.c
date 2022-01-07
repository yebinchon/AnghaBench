
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;


 int get_called ;
 int * get_sess_val ;

__attribute__((used)) static SSL_SESSION *get_session_cb(SSL *ssl, const unsigned char *id, int len,
                                   int *copy)
{
    get_called++;
    *copy = 1;
    return get_sess_val;
}
