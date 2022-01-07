
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {TYPE_1__* session; } ;
struct TYPE_4__ {int * peer; } ;
typedef TYPE_2__ SSL ;


 int X509_up_ref (int *) ;

X509 *SSL_get_peer_certificate(const SSL *s)
{
    X509 *r;

    if ((s == ((void*)0)) || (s->session == ((void*)0)))
        r = ((void*)0);
    else
        r = s->session->peer;

    if (r == ((void*)0))
        return r;

    X509_up_ref(r);

    return r;
}
