
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ starttls; } ;
typedef TYPE_1__ ngx_mail_ssl_conf_t ;
struct TYPE_9__ {int text; } ;
typedef TYPE_2__ ngx_mail_session_t ;
struct TYPE_10__ {int capability; int starttls_only_capability; int starttls_capability; } ;
typedef TYPE_3__ ngx_mail_imap_srv_conf_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int * ssl; } ;
typedef TYPE_4__ ngx_connection_t ;


 scalar_t__ NGX_MAIL_STARTTLS_ON ;
 scalar_t__ NGX_MAIL_STARTTLS_ONLY ;
 int NGX_OK ;
 void* ngx_mail_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_mail_imap_module ;
 int ngx_mail_ssl_module ;

__attribute__((used)) static ngx_int_t
ngx_mail_imap_capability(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_mail_imap_srv_conf_t *iscf;

    iscf = ngx_mail_get_module_srv_conf(s, ngx_mail_imap_module);
    s->text = iscf->capability;

    return NGX_OK;
}
