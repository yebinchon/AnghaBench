
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_undefined_function (int *) ;

__attribute__((used)) static int ssl_undefined_function_1(SSL *ssl, unsigned char *r, size_t s,
                                    const char * t, size_t u,
                                    const unsigned char * v, size_t w, int x)
{
    (void)r;
    (void)s;
    (void)t;
    (void)u;
    (void)v;
    (void)w;
    (void)x;
    return ssl_undefined_function(ssl);
}
