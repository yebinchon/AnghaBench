
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int meta; } ;
typedef TYPE_1__ ngx_rtmp_codec_app_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_RTMP_CODEC_META_ON ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_rtmp_codec_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_codec_app_conf_t *prev = parent;
    ngx_rtmp_codec_app_conf_t *conf = child;

    ngx_conf_merge_uint_value(conf->meta, prev->meta, NGX_RTMP_CODEC_META_ON);

    return NGX_CONF_OK;
}
