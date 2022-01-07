
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_buffer_size; int buffer_size; } ;
typedef TYPE_1__ ngx_http_mp4_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_size_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_http_mp4_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_mp4_conf_t *prev = parent;
    ngx_http_mp4_conf_t *conf = child;

    ngx_conf_merge_size_value(conf->buffer_size, prev->buffer_size, 512 * 1024);
    ngx_conf_merge_size_value(conf->max_buffer_size, prev->max_buffer_size,
                              10 * 1024 * 1024);

    return NGX_CONF_OK;
}
