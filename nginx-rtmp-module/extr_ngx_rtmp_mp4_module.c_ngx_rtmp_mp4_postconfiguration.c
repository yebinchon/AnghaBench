
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fmts; } ;
typedef TYPE_1__ ngx_rtmp_play_main_conf_t ;
struct TYPE_10__ {int send; int stop; int start; int seek; int done; int init; int sfx; int pfx; int name; } ;
typedef TYPE_2__ ngx_rtmp_play_fmt_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__** ngx_array_push (int *) ;
 TYPE_2__* ngx_pcalloc (int ,int) ;
 TYPE_1__* ngx_rtmp_conf_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_done ;
 int ngx_rtmp_mp4_init ;
 int ngx_rtmp_mp4_seek ;
 int ngx_rtmp_mp4_send ;
 int ngx_rtmp_mp4_start ;
 int ngx_rtmp_mp4_stop ;
 int ngx_rtmp_play_module ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_postconfiguration(ngx_conf_t *cf)
{
    ngx_rtmp_play_main_conf_t *pmcf;
    ngx_rtmp_play_fmt_t **pfmt, *fmt;

    pmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_play_module);

    pfmt = ngx_array_push(&pmcf->fmts);

    if (pfmt == ((void*)0)) {
        return NGX_ERROR;
    }

    fmt = ngx_pcalloc(cf->pool, sizeof(ngx_rtmp_play_fmt_t));

    if (fmt == ((void*)0)) {
        return NGX_ERROR;
    }

    *pfmt = fmt;

    ngx_str_set(&fmt->name, "mp4-format");

    ngx_str_set(&fmt->pfx, "mp4:");
    ngx_str_set(&fmt->sfx, ".mp4");

    fmt->init = ngx_rtmp_mp4_init;
    fmt->done = ngx_rtmp_mp4_done;
    fmt->seek = ngx_rtmp_mp4_seek;
    fmt->start = ngx_rtmp_mp4_start;
    fmt->stop = ngx_rtmp_mp4_stop;
    fmt->send = ngx_rtmp_mp4_send;

    return NGX_OK;
}
