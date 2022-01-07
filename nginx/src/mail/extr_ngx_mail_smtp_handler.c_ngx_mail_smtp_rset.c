
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out; int smtp_to; int smtp_from; } ;
typedef TYPE_1__ ngx_mail_session_t ;
typedef int ngx_int_t ;
typedef int ngx_connection_t ;


 int NGX_OK ;
 int ngx_str_null (int *) ;
 int ngx_str_set (int *,int ) ;
 int smtp_ok ;

__attribute__((used)) static ngx_int_t
ngx_mail_smtp_rset(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_null(&s->smtp_from);
    ngx_str_null(&s->smtp_to);
    ngx_str_set(&s->out, smtp_ok);

    return NGX_OK;
}
