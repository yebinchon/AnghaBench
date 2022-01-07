
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* d1; } ;
struct TYPE_4__ {int timer_cb; } ;
typedef TYPE_2__ SSL ;
typedef int DTLS_timer_cb ;



void DTLS_set_timer_cb(SSL *s, DTLS_timer_cb cb)
{
    s->d1->timer_cb = cb;
}
