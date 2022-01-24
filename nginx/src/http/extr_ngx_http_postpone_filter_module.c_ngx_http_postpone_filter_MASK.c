#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_8__ {TYPE_2__* postponed; int /*<<< orphan*/  main; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; scalar_t__ subrequest_in_memory; TYPE_3__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/ * out; TYPE_1__* request; } ;
typedef  TYPE_2__ ngx_http_postponed_request_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; TYPE_1__* data; scalar_t__ buffered; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_connection_t              *c;
    ngx_http_postponed_request_t  *pr;

    c = r->connection;

    FUNC5(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http postpone filter \"%V?%V\" %p", &r->uri, &r->args, in);

    if (r->subrequest_in_memory) {
        return FUNC3(r, in);
    }

    if (r != c->data) {

        if (in) {
            if (FUNC2(r, in) != NGX_OK) {
                return NGX_ERROR;
            }

            return NGX_OK;
        }

#if 0
        /* TODO: SSI may pass NULL */
        ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                      "http postpone filter NULL inactive request");
#endif

        return NGX_OK;
    }

    if (r->postponed == NULL) {

        if (in || c->buffered) {
            return FUNC0(r->main, in);
        }

        return NGX_OK;
    }

    if (in) {
        if (FUNC2(r, in) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    do {
        pr = r->postponed;

        if (pr->request) {

            FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http postpone filter wake \"%V?%V\"",
                           &pr->request->uri, &pr->request->args);

            r->postponed = pr->next;

            c->data = pr->request;

            return FUNC1(pr->request, NULL);
        }

        if (pr->out == NULL) {
            FUNC6(NGX_LOG_ALERT, c->log, 0,
                          "http postpone filter NULL output");

        } else {
            FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http postpone filter output \"%V?%V\"",
                           &r->uri, &r->args);

            if (FUNC0(r->main, pr->out) == NGX_ERROR) {
                return NGX_ERROR;
            }
        }

        r->postponed = pr->next;

    } while (r->postponed);

    return NGX_OK;
}