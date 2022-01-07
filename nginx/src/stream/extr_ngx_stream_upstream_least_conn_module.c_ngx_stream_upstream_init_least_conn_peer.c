
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_stream_upstream_srv_conf_t ;
struct TYPE_10__ {TYPE_3__* upstream; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {int get; } ;
struct TYPE_9__ {TYPE_2__ peer; } ;
struct TYPE_7__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_stream_upstream_get_least_conn_peer ;
 scalar_t__ ngx_stream_upstream_init_round_robin_peer (TYPE_4__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_stream_upstream_init_least_conn_peer(ngx_stream_session_t *s,
    ngx_stream_upstream_srv_conf_t *us)
{
    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "init least conn peer");

    if (ngx_stream_upstream_init_round_robin_peer(s, us) != NGX_OK) {
        return NGX_ERROR;
    }

    s->upstream->peer.get = ngx_stream_upstream_get_least_conn_peer;

    return NGX_OK;
}
