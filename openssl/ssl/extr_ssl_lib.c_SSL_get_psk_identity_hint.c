
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* session; } ;
struct TYPE_4__ {char const* psk_identity_hint; } ;
typedef TYPE_2__ SSL ;



const char *SSL_get_psk_identity_hint(const SSL *s)
{
    if (s == ((void*)0) || s->session == ((void*)0))
        return ((void*)0);
    return s->session->psk_identity_hint;
}
