
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_http_v2_srv_conf_t ;
struct TYPE_12__ {size_t id; struct TYPE_12__* index; int children; } ;
typedef TYPE_3__ ngx_http_v2_node_t ;
struct TYPE_13__ {int closed_nodes; TYPE_3__** streams_index; TYPE_2__* connection; TYPE_1__* http_connection; } ;
typedef TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_11__ {int pool; } ;
struct TYPE_10__ {int conf_ctx; } ;


 int * ngx_http_get_module_srv_conf (int ,int ) ;
 TYPE_3__* ngx_http_v2_get_closed_node (TYPE_4__*) ;
 size_t ngx_http_v2_index (int *,size_t) ;
 int ngx_http_v2_module ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 int ngx_queue_init (int *) ;

__attribute__((used)) static ngx_http_v2_node_t *
ngx_http_v2_get_node_by_id(ngx_http_v2_connection_t *h2c, ngx_uint_t sid,
    ngx_uint_t alloc)
{
    ngx_uint_t index;
    ngx_http_v2_node_t *node;
    ngx_http_v2_srv_conf_t *h2scf;

    h2scf = ngx_http_get_module_srv_conf(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);

    index = ngx_http_v2_index(h2scf, sid);

    for (node = h2c->streams_index[index]; node; node = node->index) {

        if (node->id == sid) {
            return node;
        }
    }

    if (!alloc) {
        return ((void*)0);
    }

    if (h2c->closed_nodes < 32) {
        node = ngx_pcalloc(h2c->connection->pool, sizeof(ngx_http_v2_node_t));
        if (node == ((void*)0)) {
            return ((void*)0);
        }

    } else {
        node = ngx_http_v2_get_closed_node(h2c);
    }

    node->id = sid;

    ngx_queue_init(&node->children);

    node->index = h2c->streams_index[index];
    h2c->streams_index[index] = node;

    return node;
}
