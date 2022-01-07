
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
typedef int ngx_stream_phase_handler_t ;
struct TYPE_13__ {int (* handler ) (TYPE_2__*) ;scalar_t__ tcp_nodelay; } ;
typedef TYPE_3__ ngx_stream_core_srv_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ type; TYPE_1__* log; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_11__ {int * action; } ;


 scalar_t__ NGX_OK ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 scalar_t__ SOCK_STREAM ;
 int ngx_stream_core_module ;
 int ngx_stream_finalize_session (TYPE_2__*,int ) ;
 TYPE_3__* ngx_stream_get_module_srv_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_tcp_nodelay (TYPE_4__*) ;
 int stub1 (TYPE_2__*) ;

ngx_int_t
ngx_stream_core_content_phase(ngx_stream_session_t *s,
    ngx_stream_phase_handler_t *ph)
{
    ngx_connection_t *c;
    ngx_stream_core_srv_conf_t *cscf;

    c = s->connection;

    c->log->action = ((void*)0);

    cscf = ngx_stream_get_module_srv_conf(s, ngx_stream_core_module);

    if (c->type == SOCK_STREAM
        && cscf->tcp_nodelay
        && ngx_tcp_nodelay(c) != NGX_OK)
    {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return NGX_OK;
    }

    cscf->handler(s);

    return NGX_OK;
}
