
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_undefined_function (int *) ;

__attribute__((used)) static int ssl_undefined_function_3(SSL *ssl, unsigned char *r,
                                    unsigned char *s, size_t t, size_t *u)
{
    (void)r;
    (void)s;
    (void)t;
    (void)u;
    return ssl_undefined_function(ssl);
}
