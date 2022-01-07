
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_play_entry_t ;
struct TYPE_7__ {scalar_t__ nelts; int elts; } ;
struct TYPE_5__ {int nbuckets; int * ctx; TYPE_4__ entries; int local_path; int temp_path; } ;
typedef TYPE_1__ ngx_rtmp_play_app_conf_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int ** ngx_array_push_n (TYPE_4__*,scalar_t__) ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_memcpy (int **,int ,int) ;
 int * ngx_pcalloc (int ,int) ;

__attribute__((used)) static char *
ngx_rtmp_play_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_play_app_conf_t *prev = parent;
    ngx_rtmp_play_app_conf_t *conf = child;
    ngx_rtmp_play_entry_t **ppe;

    ngx_conf_merge_str_value(conf->temp_path, prev->temp_path, "/tmp");
    ngx_conf_merge_str_value(conf->local_path, prev->local_path, "");

    if (prev->entries.nelts == 0) {
        goto done;
    }

    if (conf->entries.nelts == 0) {
        conf->entries = prev->entries;
        goto done;
    }

    ppe = ngx_array_push_n(&conf->entries, prev->entries.nelts);
    if (ppe == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_memcpy(ppe, prev->entries.elts, prev->entries.nelts * sizeof(void *));

done:

    if (conf->entries.nelts == 0) {
        return NGX_CONF_OK;
    }

    conf->ctx = ngx_pcalloc(cf->pool, sizeof(void *) * conf->nbuckets);
    if (conf->ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
