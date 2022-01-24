#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ len; scalar_t__ data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_18__ {int auth_methods; } ;
typedef  TYPE_4__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_14__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int nelts; TYPE_3__* elts; } ;
struct TYPE_19__ {int /*<<< orphan*/  out; TYPE_13__ smtp_from; TYPE_2__ cmd; TYPE_1__ args; } ;
typedef  TYPE_5__ ngx_mail_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;
typedef  TYPE_6__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int NGX_MAIL_AUTH_NONE_ENABLED ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_13__*) ; 
 TYPE_4__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*,char*) ; 
 int /*<<< orphan*/  ngx_mail_smtp_module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smtp_auth_required ; 
 int /*<<< orphan*/  smtp_bad_sequence ; 
 int /*<<< orphan*/  smtp_invalid_argument ; 
 int /*<<< orphan*/  smtp_ok ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t                 *arg, cmd;
    ngx_mail_smtp_srv_conf_t  *sscf;

    sscf = FUNC1(s, ngx_mail_smtp_module);

    if (!(sscf->auth_methods & NGX_MAIL_AUTH_NONE_ENABLED)) {
        FUNC2(s, c, "client was rejected: \"%V\"");
        FUNC5(&s->out, smtp_auth_required);
        return NGX_OK;
    }

    /* auth none */

    if (s->smtp_from.len) {
        FUNC5(&s->out, smtp_bad_sequence);
        return NGX_OK;
    }

    if (s->args.nelts == 0) {
        FUNC5(&s->out, smtp_invalid_argument);
        return NGX_OK;
    }

    arg = s->args.elts;
    arg += s->args.nelts - 1;

    cmd.len = arg->data + arg->len - s->cmd.data;
    cmd.data = s->cmd.data;

    s->smtp_from.len = cmd.len;

    s->smtp_from.data = FUNC4(c->pool, cmd.len);
    if (s->smtp_from.data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(s->smtp_from.data, cmd.data, cmd.len);

    FUNC0(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "smtp mail from:\"%V\"", &s->smtp_from);

    FUNC5(&s->out, smtp_ok);

    return NGX_OK;
}