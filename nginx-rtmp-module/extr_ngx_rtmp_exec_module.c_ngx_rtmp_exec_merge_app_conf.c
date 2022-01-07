
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_6__ {int nbuckets; int active; int * pull; TYPE_3__* conf; int respawn; } ;
typedef TYPE_1__ ngx_rtmp_exec_app_conf_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 size_t NGX_RTMP_EXEC_MAX ;
 size_t NGX_RTMP_EXEC_PULL ;
 int ngx_conf_merge_uint_value (int,int,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int * ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_rtmp_exec_merge_confs (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static char *
ngx_rtmp_exec_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_exec_app_conf_t *prev = parent;
    ngx_rtmp_exec_app_conf_t *conf = child;

    ngx_uint_t n;

    ngx_conf_merge_value(conf->respawn, prev->respawn, 1);
    ngx_conf_merge_uint_value(conf->nbuckets, prev->nbuckets, 1024);

    for (n = 0; n < NGX_RTMP_EXEC_MAX; n++) {
        if (ngx_rtmp_exec_merge_confs(&conf->conf[n], &prev->conf[n]) != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }

        if (conf->conf[n].nelts) {
            conf->active = 1;
            prev->active = 1;
        }
    }

    if (conf->conf[NGX_RTMP_EXEC_PULL].nelts > 0) {
        conf->pull = ngx_pcalloc(cf->pool, sizeof(void *) * conf->nbuckets);
        if (conf->pull == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
