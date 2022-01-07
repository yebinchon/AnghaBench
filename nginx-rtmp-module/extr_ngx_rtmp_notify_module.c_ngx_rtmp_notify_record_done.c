
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* connection; scalar_t__ auto_pushed; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_19__ {int path; int recorder; } ;
typedef TYPE_4__ ngx_rtmp_record_done_t ;
struct TYPE_20__ {TYPE_2__** url; } ;
typedef TYPE_5__ ngx_rtmp_notify_app_conf_t ;
struct TYPE_21__ {TYPE_4__* arg; int create; TYPE_2__* url; } ;
typedef TYPE_6__ ngx_rtmp_netcall_init_t ;
typedef int ngx_int_t ;
typedef int ci ;
struct TYPE_17__ {int url; } ;
struct TYPE_16__ {int log; } ;


 int NGX_LOG_INFO ;
 size_t NGX_RTMP_NOTIFY_RECORD_DONE ;
 int next_record_done (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,int *,int *) ;
 int ngx_memzero (TYPE_6__*,int) ;
 TYPE_5__* ngx_rtmp_get_module_app_conf (TYPE_3__*,int ) ;
 int ngx_rtmp_netcall_create (TYPE_3__*,TYPE_6__*) ;
 int ngx_rtmp_notify_module ;
 int ngx_rtmp_notify_record_done_create ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_record_done(ngx_rtmp_session_t *s, ngx_rtmp_record_done_t *v)
{
    ngx_rtmp_netcall_init_t ci;
    ngx_rtmp_notify_app_conf_t *nacf;

    if (s->auto_pushed) {
        goto next;
    }

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);
    if (nacf == ((void*)0) || nacf->url[NGX_RTMP_NOTIFY_RECORD_DONE] == ((void*)0)) {
        goto next;
    }

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "notify: record_done recorder=%V path='%V' url='%V'",
                  &v->recorder, &v->path,
                  &nacf->url[NGX_RTMP_NOTIFY_RECORD_DONE]->url);

    ngx_memzero(&ci, sizeof(ci));

    ci.url = nacf->url[NGX_RTMP_NOTIFY_RECORD_DONE];
    ci.create = ngx_rtmp_notify_record_done_create;
    ci.arg = v;

    ngx_rtmp_netcall_create(s, &ci);

next:
    return next_record_done(s, v);
}
