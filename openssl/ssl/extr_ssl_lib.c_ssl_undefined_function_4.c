
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_undefined_function (int *) ;

__attribute__((used)) static int ssl_undefined_function_4(SSL *ssl, int r)
{
    (void)r;
    return ssl_undefined_function(ssl);
}
