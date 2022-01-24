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
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int nelts; TYPE_2__* elts; } ;
struct TYPE_18__ {int /*<<< orphan*/  auth_method; TYPE_13__ passwd; TYPE_12__ login; TYPE_1__ args; } ;
typedef  TYPE_3__ ngx_mail_session_t ;
struct TYPE_19__ {int auth_methods; } ;
typedef  TYPE_4__ ngx_mail_pop3_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_MAIL_AUTH_APOP ; 
 int NGX_MAIL_AUTH_APOP_ENABLED ; 
 int /*<<< orphan*/  NGX_MAIL_PARSE_INVALID_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_12__*,TYPE_13__*) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_mail_pop3_module ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t                 *arg;
    ngx_mail_pop3_srv_conf_t  *pscf;

#if (NGX_MAIL_SSL)
    if (ngx_mail_starttls_only(s, c)) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }
#endif

    if (s->args.nelts != 2) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    pscf = FUNC1(s, ngx_mail_pop3_module);

    if (!(pscf->auth_methods & NGX_MAIL_AUTH_APOP_ENABLED)) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    arg = s->args.elts;

    s->login.len = arg[0].len;
    s->login.data = FUNC4(c->pool, s->login.len);
    if (s->login.data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(s->login.data, arg[0].data, s->login.len);

    s->passwd.len = arg[1].len;
    s->passwd.data = FUNC4(c->pool, s->passwd.len);
    if (s->passwd.data == NULL) {
        return NGX_ERROR;
    }

    FUNC3(s->passwd.data, arg[1].data, s->passwd.len);

    FUNC0(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "pop3 apop: \"%V\" \"%V\"", &s->login, &s->passwd);

    s->auth_method = NGX_MAIL_AUTH_APOP;

    return NGX_DONE;
}