
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* d1; } ;
struct TYPE_6__ {int timeout_duration_us; int next_timeout; int timeout; } ;
typedef TYPE_2__ SSL ;


 int BIO_CTRL_DGRAM_SET_NEXT_TIMEOUT ;
 int BIO_ctrl (int ,int ,int ,int *) ;
 int SSL_get_rbio (TYPE_2__*) ;
 int dtls1_clear_sent_buffer (TYPE_2__*) ;
 int memset (int *,int ,int) ;

void dtls1_stop_timer(SSL *s)
{

    memset(&s->d1->timeout, 0, sizeof(s->d1->timeout));
    memset(&s->d1->next_timeout, 0, sizeof(s->d1->next_timeout));
    s->d1->timeout_duration_us = 1000000;
    BIO_ctrl(SSL_get_rbio(s), BIO_CTRL_DGRAM_SET_NEXT_TIMEOUT, 0,
             &(s->d1->next_timeout));

    dtls1_clear_sent_buffer(s);
}
