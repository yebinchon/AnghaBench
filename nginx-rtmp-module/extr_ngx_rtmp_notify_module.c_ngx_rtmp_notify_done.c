
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int url; } ;
typedef TYPE_2__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_16__ {size_t url_idx; int * cbname; } ;
typedef TYPE_4__ ngx_rtmp_notify_done_t ;
struct TYPE_17__ {TYPE_2__** url; } ;
typedef TYPE_5__ ngx_rtmp_notify_app_conf_t ;
struct TYPE_18__ {int create; TYPE_4__* arg; TYPE_2__* url; } ;
typedef TYPE_6__ ngx_rtmp_netcall_init_t ;
typedef int ngx_int_t ;
typedef int ci ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,char*,int *) ;
 int ngx_memzero (TYPE_6__*,int) ;
 TYPE_5__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 int ngx_rtmp_netcall_create (TYPE_3__*,TYPE_6__*) ;
 int ngx_rtmp_notify_done_create ;
 int ngx_rtmp_notify_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_done(ngx_rtmp_session_t *s, char *cbname, ngx_uint_t url_idx)
{
    ngx_rtmp_netcall_init_t ci;
    ngx_rtmp_notify_done_t ds;
    ngx_rtmp_notify_app_conf_t *nacf;
    ngx_url_t *url;

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);

    url = nacf->url[url_idx];
    if (url == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "notify: %s '%V'", cbname, &url->url);

    ds.cbname = (u_char *) cbname;
    ds.url_idx = url_idx;

    ngx_memzero(&ci, sizeof(ci));

    ci.url = url;
    ci.arg = &ds;
    ci.create = ngx_rtmp_notify_done_create;

    return ngx_rtmp_netcall_create(s, &ci);
}
