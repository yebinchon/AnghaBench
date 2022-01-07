
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_7__ {int not_found; int valid; int * data; int * len; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_stream_session_t ;
typedef int ngx_proxy_protocol_t ;
typedef int ngx_int_t ;
typedef int in_port_t ;
struct TYPE_6__ {int pool; int * proxy_protocol; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_pnalloc (int ,int) ;
 int * ngx_sprintf (int *,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_stream_variable_proxy_protocol_port(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t port;
    ngx_proxy_protocol_t *pp;

    pp = s->connection->proxy_protocol;
    if (pp == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->len = 0;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = ngx_pnalloc(s->connection->pool, sizeof("65535") - 1);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    port = *(in_port_t *) ((char *) pp + data);

    if (port > 0 && port < 65536) {
        v->len = ngx_sprintf(v->data, "%ui", port) - v->data;
    }

    return NGX_OK;
}
