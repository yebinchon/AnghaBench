
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* cipher; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef int SSL_CIPHER ;



int SSL_SESSION_set_cipher(SSL_SESSION *s, const SSL_CIPHER *cipher)
{
    s->cipher = cipher;
    return 1;
}
