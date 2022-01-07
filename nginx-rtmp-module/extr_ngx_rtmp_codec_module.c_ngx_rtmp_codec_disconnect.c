
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
struct TYPE_3__ {int * meta; int * aac_header; int * avc_header; } ;
typedef TYPE_1__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int NGX_OK ;
 int ngx_rtmp_codec_module ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_free_shared_chain (int *,int *) ;
 TYPE_1__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int * ngx_rtmp_get_module_srv_conf (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_codec_disconnect(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    ngx_rtmp_codec_ctx_t *ctx;
    ngx_rtmp_core_srv_conf_t *cscf;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);
    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    if (ctx->avc_header) {
        ngx_rtmp_free_shared_chain(cscf, ctx->avc_header);
        ctx->avc_header = ((void*)0);
    }

    if (ctx->aac_header) {
        ngx_rtmp_free_shared_chain(cscf, ctx->aac_header);
        ctx->aac_header = ((void*)0);
    }

    if (ctx->meta) {
        ngx_rtmp_free_shared_chain(cscf, ctx->meta);
        ctx->meta = ((void*)0);
    }

    return NGX_OK;
}
