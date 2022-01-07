
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_13__ {int len; scalar_t__* data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {int len; scalar_t__* data; } ;
struct TYPE_16__ {int len; scalar_t__* data; } ;
struct TYPE_12__ {TYPE_2__* elts; } ;
struct TYPE_14__ {TYPE_8__ passwd; TYPE_7__ login; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int log; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_LOG_INFO ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 scalar_t__ NGX_OK ;
 int ngx_base64_decoded_length (int) ;
 scalar_t__ ngx_decode_base64 (TYPE_2__*,TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_7__*,TYPE_8__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__* ngx_pnalloc (int ,int ) ;

ngx_int_t
ngx_mail_auth_plain(ngx_mail_session_t *s, ngx_connection_t *c, ngx_uint_t n)
{
    u_char *p, *last;
    ngx_str_t *arg, plain;

    arg = s->args.elts;






    plain.data = ngx_pnalloc(c->pool, ngx_base64_decoded_length(arg[n].len));
    if (plain.data == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_decode_base64(&plain, &arg[n]) != NGX_OK) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
            "client sent invalid base64 encoding in AUTH PLAIN command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    p = plain.data;
    last = p + plain.len;

    while (p < last && *p++) { }

    if (p == last) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "client sent invalid login in AUTH PLAIN command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    s->login.data = p;

    while (p < last && *p) { p++; }

    if (p == last) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "client sent invalid password in AUTH PLAIN command");
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    s->login.len = p++ - s->login.data;

    s->passwd.len = last - p;
    s->passwd.data = p;






    return NGX_DONE;
}
