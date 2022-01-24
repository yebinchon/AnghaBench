#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_30__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_13__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_40__ {scalar_t__ status_n; int /*<<< orphan*/  trailers; int /*<<< orphan*/  headers; } ;
struct TYPE_38__ {scalar_t__ pos; scalar_t__ start; scalar_t__ last; scalar_t__ end; int temporary; int /*<<< orphan*/  tag; } ;
struct TYPE_37__ {scalar_t__ cached; TYPE_10__* connection; } ;
struct TYPE_34__ {int /*<<< orphan*/  tag; } ;
struct TYPE_41__ {scalar_t__ (* process_header ) (TYPE_9__*) ;TYPE_7__ headers_in; scalar_t__ start_time; TYPE_6__* state; TYPE_5__ buffer; TYPE_4__ peer; scalar_t__ valid_header_in; int /*<<< orphan*/  read_timeout; TYPE_2__ output; TYPE_1__* conf; int /*<<< orphan*/  request_sent; } ;
typedef  TYPE_8__ ngx_http_upstream_t ;
struct TYPE_42__ {TYPE_3__* cache; int /*<<< orphan*/  pool; } ;
typedef  TYPE_9__ ngx_http_request_t ;
struct TYPE_31__ {scalar_t__ (* recv ) (TYPE_10__*,scalar_t__,scalar_t__) ;TYPE_13__* log; TYPE_30__* read; } ;
typedef  TYPE_10__ ngx_connection_t ;
struct TYPE_39__ {scalar_t__ header_time; int /*<<< orphan*/  bytes_received; } ;
struct TYPE_36__ {int /*<<< orphan*/  header_start; } ;
struct TYPE_35__ {scalar_t__ timedout; } ;
struct TYPE_33__ {int buffer_size; } ;
struct TYPE_32__ {char* action; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_INVALID_HEADER ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_TIMEOUT ; 
 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_current_msec ; 
 scalar_t__ FUNC1 (TYPE_30__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_9__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_9__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_8__*) ; 
 scalar_t__ FUNC7 (TYPE_10__*) ; 
 scalar_t__ FUNC8 (TYPE_9__*,TYPE_8__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rev ; 
 scalar_t__ FUNC13 (TYPE_10__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_9__*) ; 

__attribute__((used)) static void
FUNC15(ngx_http_request_t *r, ngx_http_upstream_t *u)
{
    ssize_t            n;
    ngx_int_t          rc;
    ngx_connection_t  *c;

    c = u->peer.connection;

    FUNC10(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream process header");

    c->log->action = "reading response header from upstream";

    if (c->read->timedout) {
        FUNC4(r, u, NGX_HTTP_UPSTREAM_FT_TIMEOUT);
        return;
    }

    if (!u->request_sent && FUNC7(c) != NGX_OK) {
        FUNC4(r, u, NGX_HTTP_UPSTREAM_FT_ERROR);
        return;
    }

    if (u->buffer.start == NULL) {
        u->buffer.start = FUNC12(r->pool, u->conf->buffer_size);
        if (u->buffer.start == NULL) {
            FUNC2(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
        u->buffer.end = u->buffer.start + u->conf->buffer_size;
        u->buffer.temporary = 1;

        u->buffer.tag = u->output.tag;

        if (FUNC9(&u->headers_in.headers, r->pool, 8,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            FUNC2(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        if (FUNC9(&u->headers_in.trailers, r->pool, 2,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            FUNC2(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

#if (NGX_HTTP_CACHE)

        if (r->cache) {
            u->buffer.pos += r->cache->header_start;
            u->buffer.last = u->buffer.pos;
        }
#endif
    }

    for ( ;; ) {

        n = c->recv(c, u->buffer.last, u->buffer.end - u->buffer.last);

        if (n == NGX_AGAIN) {
#if 0
            ngx_add_timer(rev, u->read_timeout);
#endif

            if (FUNC1(c->read, 0) != NGX_OK) {
                FUNC2(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }

            return;
        }

        if (n == 0) {
            FUNC11(NGX_LOG_ERR, c->log, 0,
                          "upstream prematurely closed connection");
        }

        if (n == NGX_ERROR || n == 0) {
            FUNC4(r, u, NGX_HTTP_UPSTREAM_FT_ERROR);
            return;
        }

        u->state->bytes_received += n;

        u->buffer.last += n;

#if 0
        u->valid_header_in = 0;

        u->peer.cached = 0;
#endif

        rc = u->process_header(r);

        if (rc == NGX_AGAIN) {

            if (u->buffer.last == u->buffer.end) {
                FUNC11(NGX_LOG_ERR, c->log, 0,
                              "upstream sent too big header");

                FUNC4(r, u,
                                       NGX_HTTP_UPSTREAM_FT_INVALID_HEADER);
                return;
            }

            continue;
        }

        break;
    }

    if (rc == NGX_HTTP_UPSTREAM_INVALID_HEADER) {
        FUNC4(r, u, NGX_HTTP_UPSTREAM_FT_INVALID_HEADER);
        return;
    }

    if (rc == NGX_ERROR) {
        FUNC2(r, u,
                                           NGX_HTTP_INTERNAL_SERVER_ERROR);
        return;
    }

    /* rc == NGX_OK */

    u->state->header_time = ngx_current_msec - u->start_time;

    if (u->headers_in.status_n >= NGX_HTTP_SPECIAL_RESPONSE) {

        if (FUNC8(r, u) == NGX_OK) {
            return;
        }

        if (FUNC3(r, u) == NGX_OK) {
            return;
        }
    }

    if (FUNC5(r, u) != NGX_OK) {
        return;
    }

    FUNC6(r, u);
}