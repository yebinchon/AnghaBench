
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_16__ {int weight; int reuse; int * parent; int * stream; } ;
typedef TYPE_3__ ngx_http_v2_node_t ;
struct TYPE_15__ {int length; int sid; } ;
struct TYPE_17__ {scalar_t__ priority_limit; int closed; int closed_nodes; TYPE_2__ state; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_14__ {int log; } ;


 int NGX_HTTP_V2_ENHANCE_YOUR_CALM ;
 int NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_HTTP_V2_PRIORITY_SIZE ;
 int NGX_HTTP_V2_PROTOCOL_ERROR ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int* ngx_http_v2_connection_error (TYPE_4__*,int ) ;
 TYPE_3__* ngx_http_v2_get_node_by_id (TYPE_4__*,int,int) ;
 int ngx_http_v2_parse_uint32 (int*) ;
 int ngx_http_v2_set_dependency (TYPE_4__*,TYPE_3__*,int,int) ;
 int* ngx_http_v2_state_complete (TYPE_4__*,int*,int*) ;
 int* ngx_http_v2_state_save (TYPE_4__*,int*,int*,int* (*) (TYPE_4__*,int*,int*)) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_queue_insert_tail (int *,int *) ;
 int ngx_queue_remove (int *) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_priority(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_uint_t depend, dependency, excl, weight;
    ngx_http_v2_node_t *node;

    if (h2c->state.length != NGX_HTTP_V2_PRIORITY_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame with incorrect length %uz",
                      h2c->state.length);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (--h2c->priority_limit == 0) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent too many PRIORITY frames");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_ENHANCE_YOUR_CALM);
    }

    if (end - pos < NGX_HTTP_V2_PRIORITY_SIZE) {
        return ngx_http_v2_state_save(h2c, pos, end,
                                      ngx_http_v2_state_priority);
    }

    dependency = ngx_http_v2_parse_uint32(pos);

    depend = dependency & 0x7fffffff;
    excl = dependency >> 31;
    weight = pos[4] + 1;

    pos += NGX_HTTP_V2_PRIORITY_SIZE;

    ngx_log_debug4(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 PRIORITY frame sid:%ui "
                   "depends on %ui excl:%ui weight:%ui",
                   h2c->state.sid, depend, excl, weight);

    if (h2c->state.sid == 0) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame with incorrect identifier");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    if (depend == h2c->state.sid) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent PRIORITY frame for stream %ui "
                      "with incorrect dependency", h2c->state.sid);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    node = ngx_http_v2_get_node_by_id(h2c, h2c->state.sid, 1);

    if (node == ((void*)0)) {
        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    node->weight = weight;

    if (node->stream == ((void*)0)) {
        if (node->parent == ((void*)0)) {
            h2c->closed_nodes++;

        } else {
            ngx_queue_remove(&node->reuse);
        }

        ngx_queue_insert_tail(&h2c->closed, &node->reuse);
    }

    ngx_http_v2_set_dependency(h2c, node, depend, excl);

    return ngx_http_v2_state_complete(h2c, pos, end);
}
