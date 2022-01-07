
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* method; } ;
struct TYPE_4__ {int const* (* get_cipher_by_char ) (unsigned char const*) ;} ;
typedef int SSL_CIPHER ;
typedef TYPE_2__ SSL ;


 int const* stub1 (unsigned char const*) ;

const SSL_CIPHER *SSL_CIPHER_find(SSL *ssl, const unsigned char *ptr)
{
    return ssl->method->get_cipher_by_char(ptr);
}
