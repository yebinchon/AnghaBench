
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_8__ {int nelts; TYPE_2__* elts; } ;
struct TYPE_10__ {TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
typedef int ngx_connection_t ;


 int NGX_MAIL_AUTH_CRAM_MD5 ;
 int NGX_MAIL_AUTH_EXTERNAL ;
 int NGX_MAIL_AUTH_LOGIN ;
 int NGX_MAIL_AUTH_LOGIN_USERNAME ;
 int NGX_MAIL_AUTH_PLAIN ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int ngx_mail_auth_external (TYPE_3__*,int *,int) ;
 int ngx_mail_auth_plain (TYPE_3__*,int *,int) ;
 scalar_t__ ngx_mail_starttls_only (TYPE_3__*,int *) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

ngx_int_t
ngx_mail_auth_parse(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t *arg;







    if (s->args.nelts == 0) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    arg = s->args.elts;

    if (arg[0].len == 5) {

        if (ngx_strncasecmp(arg[0].data, (u_char *) "LOGIN", 5) == 0) {

            if (s->args.nelts == 1) {
                return NGX_MAIL_AUTH_LOGIN;
            }

            if (s->args.nelts == 2) {
                return NGX_MAIL_AUTH_LOGIN_USERNAME;
            }

            return NGX_MAIL_PARSE_INVALID_COMMAND;
        }

        if (ngx_strncasecmp(arg[0].data, (u_char *) "PLAIN", 5) == 0) {

            if (s->args.nelts == 1) {
                return NGX_MAIL_AUTH_PLAIN;
            }

            if (s->args.nelts == 2) {
                return ngx_mail_auth_plain(s, c, 1);
            }
        }

        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    if (arg[0].len == 8) {

        if (ngx_strncasecmp(arg[0].data, (u_char *) "CRAM-MD5", 8) == 0) {

            if (s->args.nelts != 1) {
                return NGX_MAIL_PARSE_INVALID_COMMAND;
            }

            return NGX_MAIL_AUTH_CRAM_MD5;
        }

        if (ngx_strncasecmp(arg[0].data, (u_char *) "EXTERNAL", 8) == 0) {

            if (s->args.nelts == 1) {
                return NGX_MAIL_AUTH_EXTERNAL;
            }

            if (s->args.nelts == 2) {
                return ngx_mail_auth_external(s, c, 1);
            }
        }

        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    return NGX_MAIL_PARSE_INVALID_COMMAND;
}
