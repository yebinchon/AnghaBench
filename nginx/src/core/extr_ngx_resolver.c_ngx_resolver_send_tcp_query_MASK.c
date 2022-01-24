#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  void* u_char ;
struct TYPE_18__ {int tcp_timeout; } ;
typedef  TYPE_3__ ngx_resolver_t ;
struct TYPE_19__ {TYPE_2__* tcp; int /*<<< orphan*/  log; TYPE_5__* write_buf; TYPE_5__* read_buf; } ;
typedef  TYPE_4__ ngx_resolver_connection_t ;
typedef  int /*<<< orphan*/  ngx_msec_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_20__ {int /*<<< orphan*/ * last; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* handler ) (TYPE_7__*) ;} ;
struct TYPE_17__ {TYPE_7__* write; TYPE_1__* read; TYPE_4__* data; } ;
struct TYPE_16__ {int resolver; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 scalar_t__ NGX_OK ; 
 int NGX_RESOLVER_TCP_RSIZE ; 
 int NGX_RESOLVER_TCP_WSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (TYPE_3__*,int) ; 
 TYPE_5__* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_resolver_tcp_read ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_resolver_t *r, ngx_resolver_connection_t *rec,
    u_char *query, u_short qlen)
{
    ngx_buf_t  *b;
    ngx_int_t   rc;

    rc = NGX_OK;

    if (rec->tcp == NULL) {
        b = rec->read_buf;

        if (b == NULL) {
            b = FUNC4(r, sizeof(ngx_buf_t));
            if (b == NULL) {
                return NGX_ERROR;
            }

            b->start = FUNC3(r, NGX_RESOLVER_TCP_RSIZE);
            if (b->start == NULL) {
                FUNC5(r, b);
                return NGX_ERROR;
            }

            b->end = b->start + NGX_RESOLVER_TCP_RSIZE;

            rec->read_buf = b;
        }

        b->pos = b->start;
        b->last = b->start;

        b = rec->write_buf;

        if (b == NULL) {
            b = FUNC4(r, sizeof(ngx_buf_t));
            if (b == NULL) {
                return NGX_ERROR;
            }

            b->start = FUNC3(r, NGX_RESOLVER_TCP_WSIZE);
            if (b->start == NULL) {
                FUNC5(r, b);
                return NGX_ERROR;
            }

            b->end = b->start + NGX_RESOLVER_TCP_WSIZE;

            rec->write_buf = b;
        }

        b->pos = b->start;
        b->last = b->start;

        rc = FUNC7(rec);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }

        rec->tcp->data = rec;
        rec->tcp->write->handler = ngx_resolver_tcp_write;
        rec->tcp->read->handler = ngx_resolver_tcp_read;
        rec->tcp->read->resolver = 1;

        FUNC0(rec->tcp->write, (ngx_msec_t) (r->tcp_timeout * 1000));
    }

    b = rec->write_buf;

    if (b->end - b->last <  2 + qlen) {
        FUNC2(NGX_LOG_CRIT, &rec->log, 0, "buffer overflow");
        return NGX_ERROR;
    }

    *b->last++ = (u_char) (qlen >> 8);
    *b->last++ = (u_char) qlen;
    b->last = FUNC1(b->last, query, qlen);

    if (rc == NGX_OK) {
        FUNC6(rec->tcp->write);
    }

    return NGX_OK;
}