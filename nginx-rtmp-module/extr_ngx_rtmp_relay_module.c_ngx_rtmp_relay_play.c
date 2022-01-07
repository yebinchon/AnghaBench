
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_26__ {TYPE_3__* connection; scalar_t__ relay; } ;
typedef TYPE_6__ ngx_rtmp_session_t ;
struct TYPE_24__ {int url; } ;
struct TYPE_22__ {scalar_t__ len; int data; } ;
struct TYPE_27__ {TYPE_4__ url; int play_path; int app; TYPE_2__ name; } ;
typedef TYPE_7__ ngx_rtmp_relay_target_t ;
typedef int ngx_rtmp_relay_ctx_t ;
struct TYPE_21__ {size_t nelts; TYPE_7__** elts; } ;
struct TYPE_28__ {TYPE_1__ pulls; } ;
typedef TYPE_8__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_29__ {int name; } ;
typedef TYPE_9__ ngx_rtmp_play_t ;
typedef int ngx_int_t ;
struct TYPE_23__ {int log; } ;


 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int next_play (TYPE_6__*,TYPE_9__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_5__*,int *,int *,int *) ;
 scalar_t__ ngx_memcmp (int ,int ,scalar_t__) ;
 TYPE_8__* ngx_rtmp_get_module_app_conf (TYPE_6__*,int ) ;
 int * ngx_rtmp_get_module_ctx (TYPE_6__*,int ) ;
 int ngx_rtmp_relay_module ;
 scalar_t__ ngx_rtmp_relay_pull (TYPE_6__*,TYPE_5__*,TYPE_7__*) ;
 scalar_t__ ngx_strlen (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_play(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_relay_app_conf_t *racf;
    ngx_rtmp_relay_target_t *target, **t;
    ngx_str_t name;
    size_t n;
    ngx_rtmp_relay_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx && s->relay) {
        goto next;
    }

    racf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_relay_module);
    if (racf == ((void*)0) || racf->pulls.nelts == 0) {
        goto next;
    }

    name.len = ngx_strlen(v->name);
    name.data = v->name;

    t = racf->pulls.elts;
    for (n = 0; n < racf->pulls.nelts; ++n, ++t) {
        target = *t;

        if (target->name.len && (name.len != target->name.len ||
            ngx_memcmp(name.data, target->name.data, name.len)))
        {
            continue;
        }

        if (ngx_rtmp_relay_pull(s, &name, target) == NGX_OK) {
            continue;
        }

        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                "relay: pull failed name='%V' app='%V' "
                "playpath='%V' url='%V'",
                &name, &target->app, &target->play_path,
                &target->url.url);
    }

next:
    return next_play(s, v);
}
