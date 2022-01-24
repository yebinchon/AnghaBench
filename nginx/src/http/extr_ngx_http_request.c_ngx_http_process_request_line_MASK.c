#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_22__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
struct TYPE_32__ {scalar_t__ len; scalar_t__ data; } ;
typedef  TYPE_5__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_26__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_31__ {int /*<<< orphan*/  headers; TYPE_5__ server; } ;
struct TYPE_30__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_29__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_27__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_33__ {scalar_t__ request_end; scalar_t__ request_start; scalar_t__ request_length; scalar_t__ method_end; scalar_t__ host_end; scalar_t__ host_start; scalar_t__ http_version; TYPE_11__ request_line; TYPE_22__* header_in; int /*<<< orphan*/  pool; TYPE_4__ headers_in; scalar_t__ schema_start; TYPE_3__ schema; scalar_t__ schema_end; TYPE_2__ http_protocol; TYPE_1__ method_name; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_34__ {int /*<<< orphan*/  (* handler ) (TYPE_7__*) ;scalar_t__ timedout; int /*<<< orphan*/  log; TYPE_8__* data; } ;
typedef  TYPE_7__ ngx_event_t ;
struct TYPE_35__ {int timedout; TYPE_9__* log; TYPE_6__* data; } ;
typedef  TYPE_8__ ngx_connection_t ;
struct TYPE_36__ {char* action; } ;
struct TYPE_28__ {scalar_t__ pos; scalar_t__ end; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_HTTP_BAD_REQUEST ; 
 scalar_t__ NGX_HTTP_CLIENT_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_PARSE_INVALID_VERSION ; 
 int /*<<< orphan*/  NGX_HTTP_REQUEST_TIME_OUT ; 
 int /*<<< orphan*/  NGX_HTTP_REQUEST_URI_TOO_LARGE ; 
 scalar_t__ NGX_HTTP_VERSION_10 ; 
 int /*<<< orphan*/  NGX_HTTP_VERSION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_6__*,int) ; 
 char** ngx_http_client_errors ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_6__*,TYPE_22__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC15(ngx_event_t *rev)
{
    ssize_t              n;
    ngx_int_t            rc, rv;
    ngx_str_t            host;
    ngx_connection_t    *c;
    ngx_http_request_t  *r;

    c = rev->data;
    r = c->data;

    FUNC12(NGX_LOG_DEBUG_HTTP, rev->log, 0,
                   "http process request line");

    if (rev->timedout) {
        FUNC14(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        c->timedout = 1;
        FUNC1(r, NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    rc = NGX_AGAIN;

    for ( ;; ) {

        if (rc == NGX_AGAIN) {
            n = FUNC7(r);

            if (n == NGX_AGAIN || n == NGX_ERROR) {
                break;
            }
        }

        rc = FUNC3(r, r->header_in);

        if (rc == NGX_OK) {

            /* the request line has been parsed successfully */

            r->request_line.len = r->request_end - r->request_start;
            r->request_line.data = r->request_start;
            r->request_length = r->header_in->pos - r->request_start;

            FUNC13(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http request line: \"%V\"", &r->request_line);

            r->method_name.len = r->method_end - r->request_start + 1;
            r->method_name.data = r->request_line.data;

            if (r->http_protocol.data) {
                r->http_protocol.len = r->request_end - r->http_protocol.data;
            }

            if (FUNC6(r) != NGX_OK) {
                break;
            }

            if (r->schema_end) {
                r->schema.len = r->schema_end - r->schema_start;
                r->schema.data = r->schema_start;
            }

            if (r->host_end) {

                host.len = r->host_end - r->host_start;
                host.data = r->host_start;

                rc = FUNC10(&host, r->pool, 0);

                if (rc == NGX_DECLINED) {
                    FUNC14(NGX_LOG_INFO, c->log, 0,
                                  "client sent invalid host in request line");
                    FUNC2(r, NGX_HTTP_BAD_REQUEST);
                    break;
                }

                if (rc == NGX_ERROR) {
                    FUNC1(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
                    break;
                }

                if (FUNC9(r, &host) == NGX_ERROR) {
                    break;
                }

                r->headers_in.server = host;
            }

            if (r->http_version < NGX_HTTP_VERSION_10) {

                if (r->headers_in.server.len == 0
                    && FUNC9(r, &r->headers_in.server)
                       == NGX_ERROR)
                {
                    break;
                }

                FUNC4(r);
                break;
            }


            if (FUNC11(&r->headers_in.headers, r->pool, 20,
                              sizeof(ngx_table_elt_t))
                != NGX_OK)
            {
                FUNC1(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
                break;
            }

            c->log->action = "reading client request headers";

            rev->handler = ngx_http_process_request_headers;
            FUNC5(rev);

            break;
        }

        if (rc != NGX_AGAIN) {

            /* there was error while a request line parsing */

            FUNC14(NGX_LOG_INFO, c->log, 0,
                          ngx_http_client_errors[rc - NGX_HTTP_CLIENT_ERROR]);

            if (rc == NGX_HTTP_PARSE_INVALID_VERSION) {
                FUNC2(r, NGX_HTTP_VERSION_NOT_SUPPORTED);

            } else {
                FUNC2(r, NGX_HTTP_BAD_REQUEST);
            }

            break;
        }

        /* NGX_AGAIN: a request line parsing is still incomplete */

        if (r->header_in->pos == r->header_in->end) {

            rv = FUNC0(r, 1);

            if (rv == NGX_ERROR) {
                FUNC1(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
                break;
            }

            if (rv == NGX_DECLINED) {
                r->request_line.len = r->header_in->end - r->request_start;
                r->request_line.data = r->request_start;

                FUNC14(NGX_LOG_INFO, c->log, 0,
                              "client sent too long URI");
                FUNC2(r, NGX_HTTP_REQUEST_URI_TOO_LARGE);
                break;
            }
        }
    }

    FUNC8(c);
}