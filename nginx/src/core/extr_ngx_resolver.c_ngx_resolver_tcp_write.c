
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_11__ {int tcp_timeout; } ;
typedef TYPE_1__ ngx_resolver_t ;
struct TYPE_12__ {int * tcp; TYPE_1__* resolver; TYPE_5__* write_buf; } ;
typedef TYPE_2__ ngx_resolver_connection_t ;
typedef int ngx_msec_t ;
struct TYPE_13__ {scalar_t__ ready; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_14__ {scalar_t__ sent; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;
typedef TYPE_5__ ngx_buf_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_3__*,int ) ;
 int ngx_close_connection (TYPE_4__*) ;
 scalar_t__ ngx_handle_write_event (TYPE_3__*,int ) ;
 scalar_t__ ngx_movemem (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ngx_send (TYPE_4__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_resolver_tcp_write(ngx_event_t *wev)
{
    off_t sent;
    ssize_t n;
    ngx_buf_t *b;
    ngx_resolver_t *r;
    ngx_connection_t *c;
    ngx_resolver_connection_t *rec;

    c = wev->data;
    rec = c->data;
    b = rec->write_buf;
    r = rec->resolver;

    if (wev->timedout) {
        goto failed;
    }

    sent = c->sent;

    while (wev->ready && b->pos < b->last) {
        n = ngx_send(c, b->pos, b->last - b->pos);

        if (n == NGX_AGAIN) {
            break;
        }

        if (n == NGX_ERROR) {
            goto failed;
        }

        b->pos += n;
    }

    if (b->pos != b->start) {
        b->last = ngx_movemem(b->start, b->pos, b->last - b->pos);
        b->pos = b->start;
    }

    if (c->sent != sent) {
        ngx_add_timer(wev, (ngx_msec_t) (r->tcp_timeout * 1000));
    }

    if (ngx_handle_write_event(wev, 0) != NGX_OK) {
        goto failed;
    }

    return;

failed:

    ngx_close_connection(c);
    rec->tcp = ((void*)0);
}
