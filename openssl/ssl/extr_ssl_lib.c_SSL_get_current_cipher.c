
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* session; } ;
struct TYPE_4__ {int const* cipher; } ;
typedef int SSL_CIPHER ;
typedef TYPE_2__ SSL ;



const SSL_CIPHER *SSL_get_current_cipher(const SSL *s)
{
    if ((s->session != ((void*)0)) && (s->session->cipher != ((void*)0)))
        return s->session->cipher;
    return ((void*)0);
}
