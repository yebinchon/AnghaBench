
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {scalar_t__ publish_notify; scalar_t__ play_restart; } ;
typedef TYPE_1__ ngx_rtmp_live_app_conf_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
typedef int ngx_chain_t ;


 int NGX_RTMP_MSID ;
 int ngx_rtmp_core_module ;
 int * ngx_rtmp_create_status (int *,char*,char*,char*) ;
 int * ngx_rtmp_create_stream_eof (int *,int ) ;
 int ngx_rtmp_free_shared_chain (int *,int *) ;
 TYPE_1__* ngx_rtmp_get_module_app_conf (int *,int ) ;
 int * ngx_rtmp_get_module_srv_conf (int *,int ) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_live_set_status (int *,int *,int **,size_t,int ) ;

__attribute__((used)) static void
ngx_rtmp_live_stop(ngx_rtmp_session_t *s)
{
    ngx_rtmp_core_srv_conf_t *cscf;
    ngx_rtmp_live_app_conf_t *lacf;
    ngx_chain_t *control;
    ngx_chain_t *status[3];
    size_t n, nstatus;

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);

    control = ngx_rtmp_create_stream_eof(s, NGX_RTMP_MSID);

    nstatus = 0;

    if (lacf->play_restart) {
        status[nstatus++] = ngx_rtmp_create_status(s, "NetStream.Play.Stop",
                                                   "status", "Stop live");
    }

    if (lacf->publish_notify) {
        status[nstatus++] = ngx_rtmp_create_status(s,
                                               "NetStream.Play.UnpublishNotify",
                                               "status", "Stop publishing");
    }

    ngx_rtmp_live_set_status(s, control, status, nstatus, 0);

    if (control) {
        ngx_rtmp_free_shared_chain(cscf, control);
    }

    for (n = 0; n < nstatus; ++n) {
        ngx_rtmp_free_shared_chain(cscf, status[n]);
    }
}
