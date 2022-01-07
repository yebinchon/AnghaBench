
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int url; } ;
typedef TYPE_2__ ngx_url_t ;
struct TYPE_19__ {TYPE_1__* connection; scalar_t__ auto_pushed; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_20__ {int args; int name; } ;
typedef TYPE_4__ ngx_rtmp_publish_t ;
struct TYPE_21__ {TYPE_2__** url; } ;
typedef TYPE_5__ ngx_rtmp_notify_app_conf_t ;
struct TYPE_22__ {int argsize; TYPE_4__* arg; int handle; int create; TYPE_2__* url; } ;
typedef TYPE_6__ ngx_rtmp_netcall_init_t ;
typedef int ngx_int_t ;
typedef int ci ;
struct TYPE_17__ {int log; } ;


 int NGX_LOG_INFO ;
 size_t NGX_RTMP_NOTIFY_PUBLISH ;
 int NGX_RTMP_NOTIFY_PUBLISHING ;
 int next_publish (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_memzero (TYPE_6__*,int) ;
 TYPE_5__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 int ngx_rtmp_netcall_create (TYPE_3__*,TYPE_6__*) ;
 int ngx_rtmp_notify_init (TYPE_3__*,int ,int ,int ) ;
 int ngx_rtmp_notify_module ;
 int ngx_rtmp_notify_publish_create ;
 int ngx_rtmp_notify_publish_handle ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_publish(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_notify_app_conf_t *nacf;
    ngx_rtmp_netcall_init_t ci;
    ngx_url_t *url;

    if (s->auto_pushed) {
        goto next;
    }

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);
    if (nacf == ((void*)0)) {
        goto next;
    }

    url = nacf->url[NGX_RTMP_NOTIFY_PUBLISH];

    ngx_rtmp_notify_init(s, v->name, v->args, NGX_RTMP_NOTIFY_PUBLISHING);

    if (url == ((void*)0)) {
        goto next;
    }

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "notify: publish '%V'", &url->url);

    ngx_memzero(&ci, sizeof(ci));

    ci.url = url;
    ci.create = ngx_rtmp_notify_publish_create;
    ci.handle = ngx_rtmp_notify_publish_handle;
    ci.arg = v;
    ci.argsize = sizeof(*v);

    return ngx_rtmp_netcall_create(s, &ci);

next:
    return next_publish(s, v);
}
