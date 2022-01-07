
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_5__ {int timestamp; } ;
typedef TYPE_1__ ngx_rtmp_header_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
struct TYPE_6__ {int * meta; } ;
typedef TYPE_2__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int NGX_ERROR ;
 int * ngx_rtmp_append_shared_bufs (int *,int *,int *) ;
 int ngx_rtmp_codec_module ;
 int ngx_rtmp_codec_prepare_meta (int *,int ) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_free_shared_chain (int *,int *) ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int * ngx_rtmp_get_module_srv_conf (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_codec_copy_meta(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    ngx_rtmp_codec_ctx_t *ctx;
    ngx_rtmp_core_srv_conf_t *cscf;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    if (ctx->meta) {
        ngx_rtmp_free_shared_chain(cscf, ctx->meta);
    }

    ctx->meta = ngx_rtmp_append_shared_bufs(cscf, ((void*)0), in);

    if (ctx->meta == ((void*)0)) {
        return NGX_ERROR;
    }

    return ngx_rtmp_codec_prepare_meta(s, h->timestamp);
}
