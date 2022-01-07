
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL3_RECORD ;
typedef int SSL ;


 int ssl_undefined_function (int *) ;

__attribute__((used)) static int ssl_undefined_function_2(SSL *ssl, SSL3_RECORD *r, unsigned char *s,
                                    int t)
{
    (void)r;
    (void)s;
    (void)t;
    return ssl_undefined_function(ssl);
}
