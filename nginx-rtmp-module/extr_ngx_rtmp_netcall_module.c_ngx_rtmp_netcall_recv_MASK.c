#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ (* sink ) (int /*<<< orphan*/ ,TYPE_4__*) ;scalar_t__ (* filter ) (TYPE_4__*) ;int /*<<< orphan*/  timeout; TYPE_4__* in; TYPE_4__* inlast; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  session; int /*<<< orphan*/  detached; } ;
typedef  TYPE_1__ ngx_rtmp_netcall_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_17__ {scalar_t__ timer_set; scalar_t__ timedout; TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_18__ {int timedout; scalar_t__ (* recv ) (TYPE_3__*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  pool; scalar_t__ destroyed; TYPE_1__* data; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_19__ {TYPE_5__* buf; struct TYPE_19__* next; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_20__ {scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;
typedef  TYPE_5__ ngx_buf_t ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC9(ngx_event_t *rev)
{
    ngx_rtmp_netcall_session_t         *cs;
    ngx_connection_t                   *cc;
    ngx_chain_t                        *cl;
    ngx_int_t                           n;
    ngx_buf_t                          *b;

    cc = rev->data;
    cs = cc->data;

    if (cc->destroyed) {
        return;
    }

    if (rev->timedout) {
        cc->timedout = 1;
        FUNC5(cc);
        return;
    }

    if (rev->timer_set) {
        FUNC3(rev);
    }

    for ( ;; ) {

        if (cs->inlast == NULL ||
            cs->inlast->buf->last == cs->inlast->buf->end)
        {
            if (cs->in && cs->sink) {
                if (!cs->detached) {
                    if (cs->sink(cs->session, cs->in) != NGX_OK) {
                        FUNC5(cc);
                        return;
                    }
                }

                b = cs->in->buf;
                b->pos = b->last = b->start;

            } else {
                cl = FUNC1(cc->pool);
                if (cl == NULL) {
                    FUNC5(cc);
                    return;
                }

                cl->next = NULL;

                cl->buf = FUNC2(cc->pool, cs->bufsize);
                if (cl->buf == NULL) {
                    FUNC5(cc);
                    return;
                }

                if (cs->in == NULL) {
                    cs->in = cl;
                } else {
                    cs->inlast->next = cl;
                }

                cs->inlast = cl;
            }
        }

        b = cs->inlast->buf;

        n = cc->recv(cc, b->last, b->end - b->last);

        if (n == NGX_ERROR || n == 0) {
            FUNC5(cc);
            return;
        }

        if (n == NGX_AGAIN) {
            if (cs->filter && cs->in
                && cs->filter(cs->in) != NGX_AGAIN)
            {
                FUNC5(cc);
                return;
            }

            FUNC0(rev, cs->timeout);
            if (FUNC4(rev, 0) != NGX_OK) {
                FUNC5(cc);
            }
            return;
        }

        b->last += n;
    }
}