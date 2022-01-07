
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idle_timeout; int recv_timeout; int streams_index_mask; int preread_size; int max_header_size; int max_field_size; int max_requests; int concurrent_pushes; int concurrent_streams; int pool_size; } ;
typedef TYPE_1__ ngx_http_v2_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_http_v2_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_v2_srv_conf_t *prev = parent;
    ngx_http_v2_srv_conf_t *conf = child;

    ngx_conf_merge_size_value(conf->pool_size, prev->pool_size, 4096);

    ngx_conf_merge_uint_value(conf->concurrent_streams,
                              prev->concurrent_streams, 128);
    ngx_conf_merge_uint_value(conf->concurrent_pushes,
                              prev->concurrent_pushes, 10);
    ngx_conf_merge_uint_value(conf->max_requests, prev->max_requests, 1000);

    ngx_conf_merge_size_value(conf->max_field_size, prev->max_field_size,
                              4096);
    ngx_conf_merge_size_value(conf->max_header_size, prev->max_header_size,
                              16384);

    ngx_conf_merge_size_value(conf->preread_size, prev->preread_size, 65536);

    ngx_conf_merge_uint_value(conf->streams_index_mask,
                              prev->streams_index_mask, 32 - 1);

    ngx_conf_merge_msec_value(conf->recv_timeout,
                              prev->recv_timeout, 30000);
    ngx_conf_merge_msec_value(conf->idle_timeout,
                              prev->idle_timeout, 180000);

    return NGX_CONF_OK;
}
