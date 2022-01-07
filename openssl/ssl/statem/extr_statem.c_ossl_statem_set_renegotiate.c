
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_init; int request_state; } ;
struct TYPE_5__ {TYPE_1__ statem; } ;
typedef TYPE_2__ SSL ;


 int TLS_ST_SW_HELLO_REQ ;

void ossl_statem_set_renegotiate(SSL *s)
{
    s->statem.in_init = 1;
    s->statem.request_state = TLS_ST_SW_HELLO_REQ;
}
