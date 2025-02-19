
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_14__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_15__ {int aac_profile; int sample_rate; int aac_chan_conf; int aac_ps; int aac_sbr; } ;
typedef TYPE_4__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_rtmp_bit_reader_t ;
struct TYPE_16__ {TYPE_1__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_13__ {int log; } ;
struct TYPE_12__ {int last; int pos; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,int) ;
 int ngx_rtmp_bit_init_reader (int *,int ,int ) ;
 scalar_t__ ngx_rtmp_bit_read (int *,int) ;
 int ngx_rtmp_codec_dump_header (TYPE_3__*,char*,TYPE_5__*) ;
 int ngx_rtmp_codec_module ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;

__attribute__((used)) static void
ngx_rtmp_codec_parse_aac_header(ngx_rtmp_session_t *s, ngx_chain_t *in)
{
    ngx_uint_t idx;
    ngx_rtmp_codec_ctx_t *ctx;
    ngx_rtmp_bit_reader_t br;

    static ngx_uint_t aac_sample_rates[] =
        { 96000, 88200, 64000, 48000,
          44100, 32000, 24000, 22050,
          16000, 12000, 11025, 8000,
           7350, 0, 0, 0 };





    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    ngx_rtmp_bit_init_reader(&br, in->buf->pos, in->buf->last);

    ngx_rtmp_bit_read(&br, 16);

    ctx->aac_profile = (ngx_uint_t) ngx_rtmp_bit_read(&br, 5);
    if (ctx->aac_profile == 31) {
        ctx->aac_profile = (ngx_uint_t) ngx_rtmp_bit_read(&br, 6) + 32;
    }

    idx = (ngx_uint_t) ngx_rtmp_bit_read(&br, 4);
    if (idx == 15) {
        ctx->sample_rate = (ngx_uint_t) ngx_rtmp_bit_read(&br, 24);
    } else {
        ctx->sample_rate = aac_sample_rates[idx];
    }

    ctx->aac_chan_conf = (ngx_uint_t) ngx_rtmp_bit_read(&br, 4);

    if (ctx->aac_profile == 5 || ctx->aac_profile == 29) {

        if (ctx->aac_profile == 29) {
            ctx->aac_ps = 1;
        }

        ctx->aac_sbr = 1;

        idx = (ngx_uint_t) ngx_rtmp_bit_read(&br, 4);
        if (idx == 15) {
            ctx->sample_rate = (ngx_uint_t) ngx_rtmp_bit_read(&br, 24);
        } else {
            ctx->sample_rate = aac_sample_rates[idx];
        }

        ctx->aac_profile = (ngx_uint_t) ngx_rtmp_bit_read(&br, 5);
        if (ctx->aac_profile == 31) {
            ctx->aac_profile = (ngx_uint_t) ngx_rtmp_bit_read(&br, 6) + 32;
        }
    }
    ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "codec: aac header profile=%ui, "
                   "sample_rate=%ui, chan_conf=%ui",
                   ctx->aac_profile, ctx->sample_rate, ctx->aac_chan_conf);
}
