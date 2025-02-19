
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_9__ {int client_buffer_size; } ;
typedef TYPE_1__ ngx_mail_smtp_srv_conf_t ;
struct TYPE_10__ {int * buffer; int args; } ;
typedef TYPE_2__ ngx_mail_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_3__ ngx_connection_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 int * ngx_create_temp_buf (int ,int ) ;
 TYPE_1__* ngx_mail_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_mail_session_internal_server_error (TYPE_2__*) ;
 int ngx_mail_smtp_module ;

__attribute__((used)) static ngx_int_t
ngx_mail_smtp_create_buffer(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_mail_smtp_srv_conf_t *sscf;

    if (ngx_array_init(&s->args, c->pool, 2, sizeof(ngx_str_t)) == NGX_ERROR) {
        ngx_mail_session_internal_server_error(s);
        return NGX_ERROR;
    }

    sscf = ngx_mail_get_module_srv_conf(s, ngx_mail_smtp_module);

    s->buffer = ngx_create_temp_buf(c->pool, sscf->client_buffer_size);
    if (s->buffer == ((void*)0)) {
        ngx_mail_session_internal_server_error(s);
        return NGX_ERROR;
    }

    return NGX_OK;
}
