
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_6__ {int timestamp; int type; int msid; int csid; } ;
typedef TYPE_1__ ngx_rtmp_header_t ;
struct TYPE_7__ {int meta_version; int meta; } ;
typedef TYPE_2__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
typedef int h ;


 int NGX_OK ;
 int NGX_RTMP_CSID_AMF ;
 int NGX_RTMP_MSG_AMF_META ;
 int NGX_RTMP_MSID ;
 int ngx_memzero (TYPE_1__*,int) ;
 int ngx_rtmp_codec_get_next_version () ;
 int ngx_rtmp_codec_module ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_prepare_message (int *,TYPE_1__*,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_codec_prepare_meta(ngx_rtmp_session_t *s, uint32_t timestamp)
{
    ngx_rtmp_header_t h;
    ngx_rtmp_codec_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    ngx_memzero(&h, sizeof(h));
    h.csid = NGX_RTMP_CSID_AMF;
    h.msid = NGX_RTMP_MSID;
    h.type = NGX_RTMP_MSG_AMF_META;
    h.timestamp = timestamp;
    ngx_rtmp_prepare_message(s, &h, ((void*)0), ctx->meta);

    ctx->meta_version = ngx_rtmp_codec_get_next_version();

    return NGX_OK;
}
