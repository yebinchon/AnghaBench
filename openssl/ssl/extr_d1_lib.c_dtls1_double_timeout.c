
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* d1; } ;
struct TYPE_5__ {int timeout_duration_us; } ;
typedef TYPE_2__ SSL ;


 int dtls1_start_timer (TYPE_2__*) ;

void dtls1_double_timeout(SSL *s)
{
    s->d1->timeout_duration_us *= 2;
    if (s->d1->timeout_duration_us > 60000000)
        s->d1->timeout_duration_us = 60000000;
    dtls1_start_timer(s);
}
