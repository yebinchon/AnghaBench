
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ relay; scalar_t__ auto_pushed; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_11__ {int args; int name; } ;
typedef TYPE_2__ ngx_rtmp_publish_t ;
struct TYPE_12__ {int publish; } ;
typedef TYPE_3__ ngx_rtmp_log_ctx_t ;
typedef int ngx_int_t ;


 int next_publish (TYPE_1__*,TYPE_2__*) ;
 TYPE_3__* ngx_rtmp_log_set_names (TYPE_1__*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_log_publish(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_log_ctx_t *ctx;

    if (s->auto_pushed || s->relay) {
        goto next;
    }

    ctx = ngx_rtmp_log_set_names(s, v->name, v->args);
    if (ctx == ((void*)0)) {
        goto next;
    }

    ctx->publish = 1;

next:
    return next_publish(s, v);
}
