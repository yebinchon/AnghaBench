#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int auth_methods; } ;
typedef  TYPE_3__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_13__ {int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {scalar_t__ nelts; } ;
struct TYPE_15__ {int /*<<< orphan*/  mail_state; int /*<<< orphan*/  out; TYPE_2__ salt; scalar_t__ state; TYPE_1__ args; } ;
typedef  TYPE_4__ ngx_mail_session_t ;
typedef  int /*<<< orphan*/  ngx_mail_core_srv_conf_t ;
typedef  int ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;

/* Variables and functions */
 int NGX_ERROR ; 
#define  NGX_MAIL_AUTH_CRAM_MD5 132 
 int NGX_MAIL_AUTH_CRAM_MD5_ENABLED ; 
#define  NGX_MAIL_AUTH_EXTERNAL 131 
 int NGX_MAIL_AUTH_EXTERNAL_ENABLED ; 
#define  NGX_MAIL_AUTH_LOGIN 130 
#define  NGX_MAIL_AUTH_LOGIN_USERNAME 129 
#define  NGX_MAIL_AUTH_PLAIN 128 
 int NGX_MAIL_PARSE_INVALID_COMMAND ; 
 int NGX_OK ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_mail_core_module ; 
 void* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_mail_smtp_module ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_smtp_auth_cram_md5 ; 
 int /*<<< orphan*/  ngx_smtp_auth_external ; 
 int /*<<< orphan*/  ngx_smtp_auth_login_password ; 
 int /*<<< orphan*/  ngx_smtp_auth_login_username ; 
 int /*<<< orphan*/  ngx_smtp_auth_plain ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smtp_invalid_argument ; 
 int /*<<< orphan*/  smtp_next ; 
 int /*<<< orphan*/  smtp_password ; 
 int /*<<< orphan*/  smtp_username ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_int_t                  rc;
    ngx_mail_core_srv_conf_t  *cscf;
    ngx_mail_smtp_srv_conf_t  *sscf;

#if (NGX_MAIL_SSL)
    if (ngx_mail_starttls_only(s, c)) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }
#endif

    if (s->args.nelts == 0) {
        FUNC6(&s->out, smtp_invalid_argument);
        s->state = 0;
        return NGX_OK;
    }

    sscf = FUNC3(s, ngx_mail_smtp_module);

    rc = FUNC2(s, c);

    switch (rc) {

    case NGX_MAIL_AUTH_LOGIN:

        FUNC6(&s->out, smtp_username);
        s->mail_state = ngx_smtp_auth_login_username;

        return NGX_OK;

    case NGX_MAIL_AUTH_LOGIN_USERNAME:

        FUNC6(&s->out, smtp_password);
        s->mail_state = ngx_smtp_auth_login_password;

        return FUNC1(s, c, 1);

    case NGX_MAIL_AUTH_PLAIN:

        FUNC6(&s->out, smtp_next);
        s->mail_state = ngx_smtp_auth_plain;

        return NGX_OK;

    case NGX_MAIL_AUTH_CRAM_MD5:

        if (!(sscf->auth_methods & NGX_MAIL_AUTH_CRAM_MD5_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        if (s->salt.data == NULL) {
            cscf = FUNC3(s, ngx_mail_core_module);

            if (FUNC4(s, c, cscf) != NGX_OK) {
                return NGX_ERROR;
            }
        }

        if (FUNC0(s, c, "334 ", 4) == NGX_OK) {
            s->mail_state = ngx_smtp_auth_cram_md5;
            return NGX_OK;
        }

        return NGX_ERROR;

    case NGX_MAIL_AUTH_EXTERNAL:

        if (!(sscf->auth_methods & NGX_MAIL_AUTH_EXTERNAL_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        FUNC6(&s->out, smtp_username);
        s->mail_state = ngx_smtp_auth_external;

        return NGX_OK;
    }

    return rc;
}