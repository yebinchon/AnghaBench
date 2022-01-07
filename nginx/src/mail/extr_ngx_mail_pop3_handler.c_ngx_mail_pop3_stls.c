
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ starttls; } ;
typedef TYPE_2__ ngx_mail_ssl_conf_t ;
typedef int ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {TYPE_1__* read; int * ssl; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_6__ {int handler; } ;


 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int NGX_OK ;
 TYPE_2__* ngx_mail_get_module_srv_conf (int *,int ) ;
 int ngx_mail_ssl_module ;
 int ngx_mail_starttls_handler ;

__attribute__((used)) static ngx_int_t
ngx_mail_pop3_stls(ngx_mail_session_t *s, ngx_connection_t *c)
{
    return NGX_MAIL_PARSE_INVALID_COMMAND;
}
