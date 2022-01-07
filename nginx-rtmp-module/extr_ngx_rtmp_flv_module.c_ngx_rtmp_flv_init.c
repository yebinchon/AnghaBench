
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_flv_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_6__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_memzero (int *,int) ;
 int * ngx_palloc (int ,int) ;
 int ngx_rtmp_flv_module ;
 int * ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_set_ctx (TYPE_2__*,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_flv_init(ngx_rtmp_session_t *s, ngx_file_t *f, ngx_int_t aindex,
                  ngx_int_t vindex)
{
    ngx_rtmp_flv_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_flv_module);

    if (ctx == ((void*)0)) {
        ctx = ngx_palloc(s->connection->pool, sizeof(ngx_rtmp_flv_ctx_t));

        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_flv_module);
    }

    ngx_memzero(ctx, sizeof(*ctx));

    return NGX_OK;
}
