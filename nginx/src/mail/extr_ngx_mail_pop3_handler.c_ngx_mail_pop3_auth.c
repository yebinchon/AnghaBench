
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nelts; } ;
struct TYPE_12__ {int mail_state; int out; scalar_t__ state; TYPE_1__ args; } ;
typedef TYPE_2__ ngx_mail_session_t ;
struct TYPE_13__ {int auth_methods; int auth_capability; } ;
typedef TYPE_3__ ngx_mail_pop3_srv_conf_t ;
typedef int ngx_int_t ;
typedef int ngx_connection_t ;


 int NGX_ERROR ;

 int NGX_MAIL_AUTH_CRAM_MD5_ENABLED ;

 int NGX_MAIL_AUTH_EXTERNAL_ENABLED ;



 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int NGX_OK ;
 int ngx_mail_auth_cram_md5_salt (TYPE_2__*,int *,char*,int) ;
 int ngx_mail_auth_login_username (TYPE_2__*,int *,int) ;
 int ngx_mail_auth_parse (TYPE_2__*,int *) ;
 TYPE_3__* ngx_mail_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_mail_pop3_module ;
 scalar_t__ ngx_mail_starttls_only (TYPE_2__*,int *) ;
 int ngx_pop3_auth_cram_md5 ;
 int ngx_pop3_auth_external ;
 int ngx_pop3_auth_login_password ;
 int ngx_pop3_auth_login_username ;
 int ngx_pop3_auth_plain ;
 int ngx_str_set (int *,int ) ;
 int pop3_next ;
 int pop3_password ;
 int pop3_username ;

__attribute__((used)) static ngx_int_t
ngx_mail_pop3_auth(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_int_t rc;
    ngx_mail_pop3_srv_conf_t *pscf;







    pscf = ngx_mail_get_module_srv_conf(s, ngx_mail_pop3_module);

    if (s->args.nelts == 0) {
        s->out = pscf->auth_capability;
        s->state = 0;

        return NGX_OK;
    }

    rc = ngx_mail_auth_parse(s, c);

    switch (rc) {

    case 130:

        ngx_str_set(&s->out, pop3_username);
        s->mail_state = ngx_pop3_auth_login_username;

        return NGX_OK;

    case 129:

        ngx_str_set(&s->out, pop3_password);
        s->mail_state = ngx_pop3_auth_login_password;

        return ngx_mail_auth_login_username(s, c, 1);

    case 128:

        ngx_str_set(&s->out, pop3_next);
        s->mail_state = ngx_pop3_auth_plain;

        return NGX_OK;

    case 132:

        if (!(pscf->auth_methods & NGX_MAIL_AUTH_CRAM_MD5_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        if (ngx_mail_auth_cram_md5_salt(s, c, "+ ", 2) == NGX_OK) {
            s->mail_state = ngx_pop3_auth_cram_md5;
            return NGX_OK;
        }

        return NGX_ERROR;

    case 131:

        if (!(pscf->auth_methods & NGX_MAIL_AUTH_EXTERNAL_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        ngx_str_set(&s->out, pop3_username);
        s->mail_state = ngx_pop3_auth_external;

        return NGX_OK;
    }

    return rc;
}
