
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_short ;
typedef void* u_char ;
struct TYPE_18__ {int tcp_timeout; } ;
typedef TYPE_3__ ngx_resolver_t ;
struct TYPE_19__ {TYPE_2__* tcp; int log; TYPE_5__* write_buf; TYPE_5__* read_buf; } ;
typedef TYPE_4__ ngx_resolver_connection_t ;
typedef int ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int * last; int * end; int * start; int * pos; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_21__ {int (* handler ) (TYPE_7__*) ;} ;
struct TYPE_17__ {TYPE_7__* write; TYPE_1__* read; TYPE_4__* data; } ;
struct TYPE_16__ {int resolver; int handler; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_CRIT ;
 scalar_t__ NGX_OK ;
 int NGX_RESOLVER_TCP_RSIZE ;
 int NGX_RESOLVER_TCP_WSIZE ;
 int ngx_add_timer (TYPE_7__*,int ) ;
 int * ngx_cpymem (int *,void**,int) ;
 int ngx_log_error (int ,int *,int ,char*) ;
 void* ngx_resolver_alloc (TYPE_3__*,int) ;
 TYPE_5__* ngx_resolver_calloc (TYPE_3__*,int) ;
 int ngx_resolver_free (TYPE_3__*,TYPE_5__*) ;
 int ngx_resolver_tcp_read ;
 int ngx_resolver_tcp_write (TYPE_7__*) ;
 scalar_t__ ngx_tcp_connect (TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_resolver_send_tcp_query(ngx_resolver_t *r, ngx_resolver_connection_t *rec,
    u_char *query, u_short qlen)
{
    ngx_buf_t *b;
    ngx_int_t rc;

    rc = NGX_OK;

    if (rec->tcp == ((void*)0)) {
        b = rec->read_buf;

        if (b == ((void*)0)) {
            b = ngx_resolver_calloc(r, sizeof(ngx_buf_t));
            if (b == ((void*)0)) {
                return NGX_ERROR;
            }

            b->start = ngx_resolver_alloc(r, NGX_RESOLVER_TCP_RSIZE);
            if (b->start == ((void*)0)) {
                ngx_resolver_free(r, b);
                return NGX_ERROR;
            }

            b->end = b->start + NGX_RESOLVER_TCP_RSIZE;

            rec->read_buf = b;
        }

        b->pos = b->start;
        b->last = b->start;

        b = rec->write_buf;

        if (b == ((void*)0)) {
            b = ngx_resolver_calloc(r, sizeof(ngx_buf_t));
            if (b == ((void*)0)) {
                return NGX_ERROR;
            }

            b->start = ngx_resolver_alloc(r, NGX_RESOLVER_TCP_WSIZE);
            if (b->start == ((void*)0)) {
                ngx_resolver_free(r, b);
                return NGX_ERROR;
            }

            b->end = b->start + NGX_RESOLVER_TCP_WSIZE;

            rec->write_buf = b;
        }

        b->pos = b->start;
        b->last = b->start;

        rc = ngx_tcp_connect(rec);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }

        rec->tcp->data = rec;
        rec->tcp->write->handler = ngx_resolver_tcp_write;
        rec->tcp->read->handler = ngx_resolver_tcp_read;
        rec->tcp->read->resolver = 1;

        ngx_add_timer(rec->tcp->write, (ngx_msec_t) (r->tcp_timeout * 1000));
    }

    b = rec->write_buf;

    if (b->end - b->last < 2 + qlen) {
        ngx_log_error(NGX_LOG_CRIT, &rec->log, 0, "buffer overflow");
        return NGX_ERROR;
    }

    *b->last++ = (u_char) (qlen >> 8);
    *b->last++ = (u_char) qlen;
    b->last = ngx_cpymem(b->last, query, qlen);

    if (rc == NGX_OK) {
        ngx_resolver_tcp_write(rec->tcp->write);
    }

    return NGX_OK;
}
