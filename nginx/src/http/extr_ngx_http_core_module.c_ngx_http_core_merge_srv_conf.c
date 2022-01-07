
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_16__ {char* data; scalar_t__ len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {int * regex; TYPE_2__ name; TYPE_4__* server; } ;
typedef TYPE_3__ ngx_http_server_name_t ;
struct TYPE_15__ {int * data; scalar_t__ len; } ;
struct TYPE_14__ {scalar_t__ nelts; TYPE_3__* elts; } ;
struct TYPE_20__ {scalar_t__ size; } ;
struct TYPE_18__ {scalar_t__ connection_pool_size; scalar_t__ request_pool_size; scalar_t__ client_header_buffer_size; TYPE_1__ server_name; TYPE_13__ server_names; int underscores_in_headers; int merge_slashes; int ignore_invalid_headers; TYPE_9__ large_client_header_buffers; int client_header_timeout; } ;
typedef TYPE_4__ ngx_http_core_srv_conf_t ;
struct TYPE_19__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 TYPE_3__* ngx_array_push (TYPE_13__*) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 int ngx_conf_merge_bufs_value (TYPE_9__,TYPE_9__,int,int) ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_size_value (scalar_t__,scalar_t__,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int * ngx_pstrdup (int ,TYPE_2__*) ;
 int ngx_str_set (TYPE_2__*,char*) ;

__attribute__((used)) static char *
ngx_http_core_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_core_srv_conf_t *prev = parent;
    ngx_http_core_srv_conf_t *conf = child;

    ngx_str_t name;
    ngx_http_server_name_t *sn;



    ngx_conf_merge_size_value(conf->connection_pool_size,
                              prev->connection_pool_size, 64 * sizeof(void *));
    ngx_conf_merge_size_value(conf->request_pool_size,
                              prev->request_pool_size, 4096);
    ngx_conf_merge_msec_value(conf->client_header_timeout,
                              prev->client_header_timeout, 60000);
    ngx_conf_merge_size_value(conf->client_header_buffer_size,
                              prev->client_header_buffer_size, 1024);
    ngx_conf_merge_bufs_value(conf->large_client_header_buffers,
                              prev->large_client_header_buffers,
                              4, 8192);

    if (conf->large_client_header_buffers.size < conf->connection_pool_size) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "the \"large_client_header_buffers\" size must be "
                           "equal to or greater than \"connection_pool_size\"");
        return NGX_CONF_ERROR;
    }

    ngx_conf_merge_value(conf->ignore_invalid_headers,
                              prev->ignore_invalid_headers, 1);

    ngx_conf_merge_value(conf->merge_slashes, prev->merge_slashes, 1);

    ngx_conf_merge_value(conf->underscores_in_headers,
                              prev->underscores_in_headers, 0);

    if (conf->server_names.nelts == 0) {

        sn = ngx_array_push(&conf->server_names);



        sn->server = conf;
        ngx_str_set(&sn->name, "");
    }

    sn = conf->server_names.elts;
    name = sn[0].name;
    if (name.data[0] == '.') {
        name.len--;
        name.data++;
    }

    conf->server_name.len = name.len;
    conf->server_name.data = ngx_pstrdup(cf->pool, &name);
    if (conf->server_name.data == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
