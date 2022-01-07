
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rec; scalar_t__ flags; int url; int interval; int notify; int lock_file; int append; int unique; int max_frames; int max_size; int suffix; int path; } ;
typedef TYPE_1__ ngx_rtmp_record_app_conf_t ;
typedef int ngx_msec_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 TYPE_1__** ngx_array_push (int *) ;
 int ngx_conf_merge_bitmask_value (scalar_t__,scalar_t__,int ) ;
 int ngx_conf_merge_msec_value (int ,int ,int ) ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_size_value (int ,int ,int ) ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_conf_merge_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_rtmp_record_merge_app_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_record_app_conf_t *prev = parent;
    ngx_rtmp_record_app_conf_t *conf = child;
    ngx_rtmp_record_app_conf_t **rracf;

    ngx_conf_merge_str_value(conf->path, prev->path, "");
    ngx_conf_merge_str_value(conf->suffix, prev->suffix, ".flv");
    ngx_conf_merge_size_value(conf->max_size, prev->max_size, 0);
    ngx_conf_merge_size_value(conf->max_frames, prev->max_frames, 0);
    ngx_conf_merge_value(conf->unique, prev->unique, 0);
    ngx_conf_merge_value(conf->append, prev->append, 0);
    ngx_conf_merge_value(conf->lock_file, prev->lock_file, 0);
    ngx_conf_merge_value(conf->notify, prev->notify, 0);
    ngx_conf_merge_msec_value(conf->interval, prev->interval,
                              (ngx_msec_t) NGX_CONF_UNSET);
    ngx_conf_merge_bitmask_value(conf->flags, prev->flags, 0);
    ngx_conf_merge_ptr_value(conf->url, prev->url, ((void*)0));

    if (conf->flags) {
        rracf = ngx_array_push(&conf->rec);
        if (rracf == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        *rracf = conf;
    }

    return NGX_CONF_OK;
}
