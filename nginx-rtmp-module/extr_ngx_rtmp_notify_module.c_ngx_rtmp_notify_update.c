
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int url; } ;
typedef TYPE_2__ ngx_url_t ;
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_18__ {TYPE_2__** url; } ;
typedef TYPE_4__ ngx_rtmp_notify_app_conf_t ;
struct TYPE_19__ {int (* handle ) (TYPE_3__*,int *,int *) ;int create; TYPE_2__* url; } ;
typedef TYPE_5__ ngx_rtmp_netcall_init_t ;
struct TYPE_20__ {TYPE_7__* data; } ;
typedef TYPE_6__ ngx_event_t ;
struct TYPE_21__ {TYPE_3__* data; } ;
typedef TYPE_7__ ngx_connection_t ;
typedef int ci ;
struct TYPE_15__ {int log; } ;


 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 size_t NGX_RTMP_NOTIFY_UPDATE ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_rtmp_netcall_create (TYPE_3__*,TYPE_5__*) ;
 int ngx_rtmp_notify_module ;
 int ngx_rtmp_notify_update_create ;
 int ngx_rtmp_notify_update_handle (TYPE_3__*,int *,int *) ;

__attribute__((used)) static void
ngx_rtmp_notify_update(ngx_event_t *e)
{
    ngx_connection_t *c;
    ngx_rtmp_session_t *s;
    ngx_rtmp_notify_app_conf_t *nacf;
    ngx_rtmp_netcall_init_t ci;
    ngx_url_t *url;

    c = e->data;
    s = c->data;

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);

    url = nacf->url[NGX_RTMP_NOTIFY_UPDATE];

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "notify: update '%V'", &url->url);

    ngx_memzero(&ci, sizeof(ci));

    ci.url = url;
    ci.create = ngx_rtmp_notify_update_create;
    ci.handle = ngx_rtmp_notify_update_handle;

    if (ngx_rtmp_netcall_create(s, &ci) == NGX_OK) {
        return;
    }



    ngx_rtmp_notify_update_handle(s, ((void*)0), ((void*)0));
}
