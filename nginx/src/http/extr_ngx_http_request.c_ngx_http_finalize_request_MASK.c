#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_21__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_25__ {int logged; int done; int request_complete; int /*<<< orphan*/  post_action; int /*<<< orphan*/  (* write_event_handler ) (TYPE_3__*) ;int /*<<< orphan*/  read_event_handler; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; TYPE_2__* postponed; scalar_t__ buffered; int /*<<< orphan*/  count; struct TYPE_25__* main; scalar_t__ waited; struct TYPE_25__* parent; scalar_t__ background; TYPE_1__* post_subrequest; int /*<<< orphan*/ * content_handler; scalar_t__ filter_finalize; TYPE_5__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_26__ {scalar_t__ log_subrequest; } ;
typedef  TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_27__ {int error; int timedout; TYPE_21__* read; TYPE_21__* write; int /*<<< orphan*/  log; TYPE_3__* data; scalar_t__ buffered; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_24__ {struct TYPE_24__* next; TYPE_3__* request; } ;
struct TYPE_23__ {scalar_t__ eof; scalar_t__ delayed; scalar_t__ timer_set; void* handler; } ;
struct TYPE_22__ {scalar_t__ (* handler ) (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_CLIENT_CLOSED_REQUEST ; 
 scalar_t__ NGX_HTTP_CLOSE ; 
 scalar_t__ NGX_HTTP_CREATED ; 
 scalar_t__ NGX_HTTP_NO_CONTENT ; 
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_21__*) ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_4__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 void* ngx_http_request_handler ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC17(ngx_http_request_t *r, ngx_int_t rc)
{
    ngx_connection_t          *c;
    ngx_http_request_t        *pr;
    ngx_http_core_loc_conf_t  *clcf;

    c = r->connection;

    FUNC14(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http finalize request: %i, \"%V?%V\" a:%d, c:%d",
                   rc, &r->uri, &r->args, r == c->data, r->main->count);

    if (rc == NGX_DONE) {
        FUNC3(r);
        return;
    }

    if (rc == NGX_OK && r->filter_finalize) {
        c->error = 1;
    }

    if (rc == NGX_DECLINED) {
        r->content_handler = NULL;
        r->write_event_handler = ngx_http_core_run_phases;
        FUNC2(r);
        return;
    }

    if (r != r->main && r->post_subrequest) {
        rc = r->post_subrequest->handler(r, r->post_subrequest->data, rc);
    }

    if (rc == NGX_ERROR
        || rc == NGX_HTTP_REQUEST_TIME_OUT
        || rc == NGX_HTTP_CLIENT_CLOSED_REQUEST
        || c->error)
    {
        if (FUNC6(r) == NGX_OK) {
            return;
        }

        FUNC12(r, rc);
        return;
    }

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE
        || rc == NGX_HTTP_CREATED
        || rc == NGX_HTTP_NO_CONTENT)
    {
        if (rc == NGX_HTTP_CLOSE) {
            c->timedout = 1;
            FUNC12(r, rc);
            return;
        }

        if (r == r->main) {
            if (c->read->timer_set) {
                FUNC0(c->read);
            }

            if (c->write->timer_set) {
                FUNC0(c->write);
            }
        }

        c->read->handler = ngx_http_request_handler;
        c->write->handler = ngx_http_request_handler;

        FUNC17(r, FUNC11(r, rc));
        return;
    }

    if (r != r->main) {
        clcf = FUNC4(r, ngx_http_core_module);

        if (r->background) {
            if (!r->logged) {
                if (clcf->log_subrequest) {
                    FUNC5(r);
                }

                r->logged = 1;

            } else {
                FUNC15(NGX_LOG_ALERT, c->log, 0,
                              "subrequest: \"%V?%V\" logged again",
                              &r->uri, &r->args);
            }

            r->done = 1;
            FUNC3(r);
            return;
        }

        if (r->buffered || r->postponed) {

            if (FUNC10(r) != NGX_OK) {
                FUNC12(r, 0);
            }

            return;
        }

        pr = r->parent;

        if (r == c->data) {

            r->main->count--;

            if (!r->logged) {
                if (clcf->log_subrequest) {
                    FUNC5(r);
                }

                r->logged = 1;

            } else {
                FUNC15(NGX_LOG_ALERT, c->log, 0,
                              "subrequest: \"%V?%V\" logged again",
                              &r->uri, &r->args);
            }

            r->done = 1;

            if (pr->postponed && pr->postponed->request == r) {
                pr->postponed = pr->postponed->next;
            }

            c->data = pr;

        } else {

            FUNC13(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "http finalize non-active request: \"%V?%V\"",
                           &r->uri, &r->args);

            r->write_event_handler = ngx_http_request_finalizer;

            if (r->waited) {
                r->done = 1;
            }
        }

        if (FUNC7(pr, NULL) != NGX_OK) {
            r->main->count++;
            FUNC12(r, 0);
            return;
        }

        FUNC13(NGX_LOG_DEBUG_HTTP, c->log, 0,
                       "http wake parent request: \"%V?%V\"",
                       &pr->uri, &pr->args);

        return;
    }

    if (r->buffered || c->buffered || r->postponed) {

        if (FUNC10(r) != NGX_OK) {
            FUNC12(r, 0);
        }

        return;
    }

    if (r != c->data) {
        FUNC15(NGX_LOG_ALERT, c->log, 0,
                      "http finalize non-active request: \"%V?%V\"",
                      &r->uri, &r->args);
        return;
    }

    r->done = 1;

    r->read_event_handler = ngx_http_block_reading;
    r->write_event_handler = ngx_http_request_empty_handler;

    if (!r->post_action) {
        r->request_complete = 1;
    }

    if (FUNC6(r) == NGX_OK) {
        return;
    }

    if (c->read->timer_set) {
        FUNC0(c->read);
    }

    if (c->write->timer_set) {
        c->write->delayed = 0;
        FUNC0(c->write);
    }

    if (c->read->eof) {
        FUNC1(r, 0);
        return;
    }

    FUNC3(r);
}