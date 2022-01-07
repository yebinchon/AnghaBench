
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ starttls; } ;
typedef TYPE_3__ ngx_mail_ssl_conf_t ;
struct TYPE_13__ {TYPE_1__* buffer; int smtp_to; int smtp_from; int smtp_helo; } ;
typedef TYPE_4__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {TYPE_2__* read; int * ssl; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_11__ {int handler; } ;
struct TYPE_10__ {int start; int last; int pos; } ;


 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int NGX_OK ;
 TYPE_3__* ngx_mail_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_mail_ssl_module ;
 int ngx_mail_starttls_handler ;
 int ngx_str_null (int *) ;

__attribute__((used)) static ngx_int_t
ngx_mail_smtp_starttls(ngx_mail_session_t *s, ngx_connection_t *c)
{
    return NGX_MAIL_PARSE_INVALID_COMMAND;
}
