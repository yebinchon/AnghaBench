
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tls_session_ticket_ext_cb_fn ;
struct TYPE_4__ {void* session_ticket_cb_arg; int session_ticket_cb; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;



int SSL_set_session_ticket_ext_cb(SSL *s, tls_session_ticket_ext_cb_fn cb,
                                  void *arg)
{
    if (s == ((void*)0))
        return 0;
    s->ext.session_ticket_cb = cb;
    s->ext.session_ticket_cb_arg = arg;
    return 1;
}
