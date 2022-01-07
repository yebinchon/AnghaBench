
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* method; } ;
struct TYPE_8__ {scalar_t__ valid; } ;
struct TYPE_7__ {TYPE_2__* (* get_cipher_by_char ) (unsigned char const*) ;} ;
typedef TYPE_2__ SSL_CIPHER ;
typedef TYPE_3__ SSL ;


 TYPE_2__* stub1 (unsigned char const*) ;

const SSL_CIPHER *ssl_get_cipher_by_char(SSL *ssl, const unsigned char *ptr,
                                         int all)
{
    const SSL_CIPHER *c = ssl->method->get_cipher_by_char(ptr);

    if (c == ((void*)0) || (!all && c->valid == 0))
        return ((void*)0);
    return c;
}
