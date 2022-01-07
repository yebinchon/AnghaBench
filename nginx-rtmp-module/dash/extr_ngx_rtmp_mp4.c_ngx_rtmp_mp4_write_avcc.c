
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_11__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_12__ {TYPE_5__* avc_header; } ;
typedef TYPE_4__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_1__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
typedef int ngx_buf_t ;
struct TYPE_10__ {int log; } ;
struct TYPE_9__ {int * last; int * pos; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_codec_module ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_data (int *,int *,size_t) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_avcc(ngx_rtmp_session_t *s, ngx_buf_t *b)
{
    u_char *pos, *p;
    ngx_chain_t *in;
    ngx_rtmp_codec_ctx_t *codec_ctx;

    codec_ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    if (codec_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    in = codec_ctx->avc_header;
    if (in == ((void*)0)) {
        return NGX_ERROR;
    }

    pos = ngx_rtmp_mp4_start_box(b, "avcC");
    p = in->buf->pos + 5;

    if (p < in->buf->last) {
        ngx_rtmp_mp4_data(b, p, (size_t) (in->buf->last - p));
    } else {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, ngx_errno,
                      "dash: invalid avcc received");
    }

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
