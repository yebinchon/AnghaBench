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
typedef  size_t ngx_uint_t ;
struct TYPE_11__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_10__ {TYPE_2__* elts; } ;
struct TYPE_12__ {int /*<<< orphan*/  auth_method; TYPE_2__ login; TYPE_1__ args; } ;
typedef  TYPE_3__ ngx_mail_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DONE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_MAIL ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_MAIL_AUTH_EXTERNAL ; 
 int /*<<< orphan*/  NGX_MAIL_PARSE_INVALID_COMMAND ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC5(ngx_mail_session_t *s, ngx_connection_t *c,
    ngx_uint_t n)
{
    ngx_str_t  *arg, external;

    arg = s->args.elts;

    FUNC2(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "mail auth external: \"%V\"", &arg[n]);

    external.data = FUNC4(c->pool, FUNC0(arg[n].len));
    if (external.data == NULL) {
        return NGX_ERROR;
    }

    if (FUNC1(&external, &arg[n]) != NGX_OK) {
        FUNC3(NGX_LOG_INFO, c->log, 0,
            "client sent invalid base64 encoding in AUTH EXTERNAL command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    s->login.len = external.len;
    s->login.data = external.data;

    FUNC2(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "mail auth external: \"%V\"", &s->login);

    s->auth_method = NGX_MAIL_AUTH_EXTERNAL;

    return NGX_DONE;
}