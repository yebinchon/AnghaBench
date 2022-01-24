#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  greeting; } ;
typedef  TYPE_1__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_19__ {int quit; int /*<<< orphan*/  out; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_2__ ngx_mail_session_t ;
struct TYPE_20__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ ngx_mail_core_srv_conf_t ;
struct TYPE_21__ {scalar_t__ timedout; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_event_t ;
struct TYPE_22__ {int /*<<< orphan*/  write; TYPE_13__* log; TYPE_14__* read; TYPE_2__* data; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_17__ {int /*<<< orphan*/  handler; } ;
struct TYPE_16__ {char* action; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_mail_core_module ; 
 void* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_5__*,char*) ; 
 int /*<<< orphan*/  ngx_mail_smtp_init_protocol ; 
 int /*<<< orphan*/  ngx_mail_smtp_module ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smtp_invalid_pipelining ; 

__attribute__((used)) static void
FUNC9(ngx_event_t *rev)
{
    ngx_connection_t          *c;
    ngx_mail_session_t        *s;
    ngx_mail_core_srv_conf_t  *cscf;
    ngx_mail_smtp_srv_conf_t  *sscf;

    c = rev->data;
    s = c->data;

    c->log->action = "in delay pipelining state";

    if (rev->timedout) {

        FUNC2(NGX_LOG_DEBUG_MAIL, c->log, 0, "delay greeting");

        rev->timedout = 0;

        cscf = FUNC4(s, ngx_mail_core_module);

        c->read->handler = ngx_mail_smtp_init_protocol;

        FUNC0(c->read, cscf->timeout);

        if (FUNC1(c->read, 0) != NGX_OK) {
            FUNC3(c);
            return;
        }

        sscf = FUNC4(s, ngx_mail_smtp_module);

        s->out = sscf->greeting;

    } else {

        FUNC2(NGX_LOG_DEBUG_MAIL, c->log, 0, "invalid pipelining");

        if (s->buffer == NULL) {
            if (FUNC6(s, c) != NGX_OK) {
                return;
            }
        }

        if (FUNC7(s, c,
                                "client was rejected before greeting: \"%V\"")
            != NGX_OK)
        {
            return;
        }

        FUNC8(&s->out, smtp_invalid_pipelining);
        s->quit = 1;
    }

    FUNC5(c->write);
}