
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_8__ {TYPE_1__ name; } ;
typedef TYPE_2__ ngx_rtmp_relay_ctx_t ;
struct TYPE_9__ {int silent; int name; } ;
typedef TYPE_3__ ngx_rtmp_publish_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 scalar_t__* ngx_cpymem (int ,int ,int ) ;
 int ngx_memzero (TYPE_3__*,int) ;
 int ngx_min (int,int ) ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_publish (int *,TYPE_3__*) ;
 int ngx_rtmp_relay_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_publish_local(ngx_rtmp_session_t *s)
{
    ngx_rtmp_publish_t v;
    ngx_rtmp_relay_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memzero(&v, sizeof(ngx_rtmp_publish_t));
    v.silent = 1;
    *(ngx_cpymem(v.name, ctx->name.data,
            ngx_min(sizeof(v.name) - 1, ctx->name.len))) = 0;

    return ngx_rtmp_publish(s, &v);
}
