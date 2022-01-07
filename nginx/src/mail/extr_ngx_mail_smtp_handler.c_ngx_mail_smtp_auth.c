
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int auth_methods; } ;
typedef TYPE_3__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_13__ {int * data; } ;
struct TYPE_12__ {scalar_t__ nelts; } ;
struct TYPE_15__ {int mail_state; int out; TYPE_2__ salt; scalar_t__ state; TYPE_1__ args; } ;
typedef TYPE_4__ ngx_mail_session_t ;
typedef int ngx_mail_core_srv_conf_t ;
typedef int ngx_int_t ;
typedef int ngx_connection_t ;


 int NGX_ERROR ;

 int NGX_MAIL_AUTH_CRAM_MD5_ENABLED ;

 int NGX_MAIL_AUTH_EXTERNAL_ENABLED ;



 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int NGX_OK ;
 int ngx_mail_auth_cram_md5_salt (TYPE_4__*,int *,char*,int) ;
 int ngx_mail_auth_login_username (TYPE_4__*,int *,int) ;
 int ngx_mail_auth_parse (TYPE_4__*,int *) ;
 int ngx_mail_core_module ;
 void* ngx_mail_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_mail_salt (TYPE_4__*,int *,int *) ;
 int ngx_mail_smtp_module ;
 scalar_t__ ngx_mail_starttls_only (TYPE_4__*,int *) ;
 int ngx_smtp_auth_cram_md5 ;
 int ngx_smtp_auth_external ;
 int ngx_smtp_auth_login_password ;
 int ngx_smtp_auth_login_username ;
 int ngx_smtp_auth_plain ;
 int ngx_str_set (int *,int ) ;
 int smtp_invalid_argument ;
 int smtp_next ;
 int smtp_password ;
 int smtp_username ;

__attribute__((used)) static ngx_int_t
ngx_mail_smtp_auth(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_int_t rc;
    ngx_mail_core_srv_conf_t *cscf;
    ngx_mail_smtp_srv_conf_t *sscf;







    if (s->args.nelts == 0) {
        ngx_str_set(&s->out, smtp_invalid_argument);
        s->state = 0;
        return NGX_OK;
    }

    sscf = ngx_mail_get_module_srv_conf(s, ngx_mail_smtp_module);

    rc = ngx_mail_auth_parse(s, c);

    switch (rc) {

    case 130:

        ngx_str_set(&s->out, smtp_username);
        s->mail_state = ngx_smtp_auth_login_username;

        return NGX_OK;

    case 129:

        ngx_str_set(&s->out, smtp_password);
        s->mail_state = ngx_smtp_auth_login_password;

        return ngx_mail_auth_login_username(s, c, 1);

    case 128:

        ngx_str_set(&s->out, smtp_next);
        s->mail_state = ngx_smtp_auth_plain;

        return NGX_OK;

    case 132:

        if (!(sscf->auth_methods & NGX_MAIL_AUTH_CRAM_MD5_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        if (s->salt.data == ((void*)0)) {
            cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

            if (ngx_mail_salt(s, c, cscf) != NGX_OK) {
                return NGX_ERROR;
            }
        }

        if (ngx_mail_auth_cram_md5_salt(s, c, "334 ", 4) == NGX_OK) {
            s->mail_state = ngx_smtp_auth_cram_md5;
            return NGX_OK;
        }

        return NGX_ERROR;

    case 131:

        if (!(sscf->auth_methods & NGX_MAIL_AUTH_EXTERNAL_ENABLED)) {
            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        ngx_str_set(&s->out, smtp_username);
        s->mail_state = ngx_smtp_auth_external;

        return NGX_OK;
    }

    return rc;
}
