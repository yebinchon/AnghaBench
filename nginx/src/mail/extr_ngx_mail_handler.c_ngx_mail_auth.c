
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nelts; } ;
struct TYPE_11__ {int login_attempt; scalar_t__ state; TYPE_2__* buffer; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
struct TYPE_12__ {TYPE_8__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_13__ {scalar_t__ timer_set; } ;
struct TYPE_10__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;


 int ngx_del_timer (TYPE_8__*) ;
 int ngx_mail_auth_http_init (TYPE_3__*) ;

void
ngx_mail_auth(ngx_mail_session_t *s, ngx_connection_t *c)
{
    s->args.nelts = 0;

    if (s->buffer->pos == s->buffer->last) {
        s->buffer->pos = s->buffer->start;
        s->buffer->last = s->buffer->start;
    }

    s->state = 0;

    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }

    s->login_attempt++;

    ngx_mail_auth_http_init(s);
}
