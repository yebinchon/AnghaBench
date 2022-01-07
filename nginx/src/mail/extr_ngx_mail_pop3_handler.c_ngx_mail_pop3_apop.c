
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_17__ {int data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_15__ {int len; int * data; } ;
struct TYPE_14__ {int len; int * data; } ;
struct TYPE_16__ {int nelts; TYPE_2__* elts; } ;
struct TYPE_18__ {int auth_method; TYPE_13__ passwd; TYPE_12__ login; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
struct TYPE_19__ {int auth_methods; } ;
typedef TYPE_4__ ngx_mail_pop3_srv_conf_t ;
typedef int ngx_int_t ;
struct TYPE_20__ {int log; int pool; } ;
typedef TYPE_5__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_MAIL_AUTH_APOP ;
 int NGX_MAIL_AUTH_APOP_ENABLED ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_12__*,TYPE_13__*) ;
 TYPE_4__* ngx_mail_get_module_srv_conf (TYPE_3__*,int ) ;
 int ngx_mail_pop3_module ;
 scalar_t__ ngx_mail_starttls_only (TYPE_3__*,TYPE_5__*) ;
 int ngx_memcpy (int *,int ,int ) ;
 void* ngx_pnalloc (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_mail_pop3_apop(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t *arg;
    ngx_mail_pop3_srv_conf_t *pscf;







    if (s->args.nelts != 2) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    pscf = ngx_mail_get_module_srv_conf(s, ngx_mail_pop3_module);

    if (!(pscf->auth_methods & NGX_MAIL_AUTH_APOP_ENABLED)) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    arg = s->args.elts;

    s->login.len = arg[0].len;
    s->login.data = ngx_pnalloc(c->pool, s->login.len);
    if (s->login.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(s->login.data, arg[0].data, s->login.len);

    s->passwd.len = arg[1].len;
    s->passwd.data = ngx_pnalloc(c->pool, s->passwd.len);
    if (s->passwd.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(s->passwd.data, arg[1].data, s->passwd.len);

    ngx_log_debug2(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "pop3 apop: \"%V\" \"%V\"", &s->login, &s->passwd);

    s->auth_method = NGX_MAIL_AUTH_APOP;

    return NGX_DONE;
}
