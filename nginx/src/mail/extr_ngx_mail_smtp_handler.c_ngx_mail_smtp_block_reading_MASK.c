#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ handler; } ;
typedef  TYPE_1__ ngx_resolver_ctx_t ;
struct TYPE_11__ {TYPE_1__* resolver_ctx; } ;
typedef  TYPE_2__ ngx_mail_session_t ;
struct TYPE_12__ {TYPE_4__* data; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; TYPE_2__* data; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ ngx_mail_smtp_resolve_addr_handler ; 
 scalar_t__ ngx_mail_smtp_resolve_name_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(ngx_event_t *rev)
{
    ngx_connection_t    *c;
    ngx_mail_session_t  *s;
    ngx_resolver_ctx_t  *ctx;

    c = rev->data;
    s = c->data;

    FUNC1(NGX_LOG_DEBUG_MAIL, c->log, 0, "smtp reading blocked");

    if (FUNC0(rev, 0) != NGX_OK) {

        if (s->resolver_ctx) {
            ctx = s->resolver_ctx;

            if (ctx->handler == ngx_mail_smtp_resolve_addr_handler) {
                FUNC3(ctx);

            } else if (ctx->handler == ngx_mail_smtp_resolve_name_handler) {
                FUNC4(ctx);
            }

            s->resolver_ctx = NULL;
        }

        FUNC2(c);
    }
}