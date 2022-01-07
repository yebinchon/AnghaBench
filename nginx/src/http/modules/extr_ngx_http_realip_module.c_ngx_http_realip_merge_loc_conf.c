
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ header; int hash; int recursive; int type; int * from; } ;
typedef TYPE_2__ ngx_http_realip_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_HTTP_REALIP_XREALIP ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;
 int ngx_conf_merge_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_http_realip_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_realip_loc_conf_t *prev = parent;
    ngx_http_realip_loc_conf_t *conf = child;

    if (conf->from == ((void*)0)) {
        conf->from = prev->from;
    }

    ngx_conf_merge_uint_value(conf->type, prev->type, NGX_HTTP_REALIP_XREALIP);
    ngx_conf_merge_value(conf->recursive, prev->recursive, 0);

    if (conf->header.len == 0) {
        conf->hash = prev->hash;
        conf->header = prev->header;
    }

    return NGX_CONF_OK;
}
