
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
struct TYPE_15__ {int avc_profile; int avc_compat; int avc_level; int avc_nal_bytes; int avc_ref_frames; int width; int height; } ;
typedef TYPE_4__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_rtmp_bit_reader_t ;
struct TYPE_16__ {TYPE_1__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_13__ {int log; } ;
struct TYPE_12__ {int last; int pos; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_log_debug7 (int ,int ,int ,char*,int,int,int,int,int,int,int) ;
 int ngx_rtmp_bit_init_reader (int *,int ,int ) ;
 scalar_t__ ngx_rtmp_bit_read (int *,int) ;
 int ngx_rtmp_bit_read_8 (int *) ;
 int ngx_rtmp_bit_read_golomb (int *) ;
 int ngx_rtmp_codec_dump_header (TYPE_3__*,char*,TYPE_5__*) ;
 int ngx_rtmp_codec_module ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;

__attribute__((used)) static void
ngx_rtmp_codec_parse_avc_header(ngx_rtmp_session_t *s, ngx_chain_t *in)
{
    ngx_uint_t profile_idc, width, height, crop_left, crop_right,
                            crop_top, crop_bottom, frame_mbs_only, n, cf_idc,
                            num_ref_frames;
    ngx_rtmp_codec_ctx_t *ctx;
    ngx_rtmp_bit_reader_t br;





    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    ngx_rtmp_bit_init_reader(&br, in->buf->pos, in->buf->last);

    ngx_rtmp_bit_read(&br, 48);

    ctx->avc_profile = (ngx_uint_t) ngx_rtmp_bit_read_8(&br);
    ctx->avc_compat = (ngx_uint_t) ngx_rtmp_bit_read_8(&br);
    ctx->avc_level = (ngx_uint_t) ngx_rtmp_bit_read_8(&br);


    ctx->avc_nal_bytes = (ngx_uint_t) ((ngx_rtmp_bit_read_8(&br) & 0x03) + 1);


    if ((ngx_rtmp_bit_read_8(&br) & 0x1f) == 0) {
        return;
    }


    ngx_rtmp_bit_read(&br, 16);


    if (ngx_rtmp_bit_read_8(&br) != 0x67) {
        return;
    }




    profile_idc = (ngx_uint_t) ngx_rtmp_bit_read(&br, 8);


    ngx_rtmp_bit_read(&br, 8);


    ngx_rtmp_bit_read(&br, 8);


    ngx_rtmp_bit_read_golomb(&br);

    if (profile_idc == 100 || profile_idc == 110 ||
        profile_idc == 122 || profile_idc == 244 || profile_idc == 44 ||
        profile_idc == 83 || profile_idc == 86 || profile_idc == 118)
    {

        cf_idc = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);

        if (cf_idc == 3) {


            ngx_rtmp_bit_read(&br, 1);
        }


        ngx_rtmp_bit_read_golomb(&br);


        ngx_rtmp_bit_read_golomb(&br);


        ngx_rtmp_bit_read(&br, 1);


        if (ngx_rtmp_bit_read(&br, 1)) {

            for (n = 0; n < (cf_idc != 3 ? 8u : 12u); n++) {


                if (ngx_rtmp_bit_read(&br, 1)) {






                }
            }
        }
    }


    ngx_rtmp_bit_read_golomb(&br);


    switch (ngx_rtmp_bit_read_golomb(&br)) {
    case 0:


        ngx_rtmp_bit_read_golomb(&br);
        break;

    case 1:


        ngx_rtmp_bit_read(&br, 1);


        ngx_rtmp_bit_read_golomb(&br);


        ngx_rtmp_bit_read_golomb(&br);


        num_ref_frames = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);

        for (n = 0; n < num_ref_frames; n++) {


            ngx_rtmp_bit_read_golomb(&br);
        }
    }


    ctx->avc_ref_frames = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);


    ngx_rtmp_bit_read(&br, 1);


    width = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);


    height = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);


    frame_mbs_only = (ngx_uint_t) ngx_rtmp_bit_read(&br, 1);

    if (!frame_mbs_only) {


        ngx_rtmp_bit_read(&br, 1);
    }


    ngx_rtmp_bit_read(&br, 1);


    if (ngx_rtmp_bit_read(&br, 1)) {

        crop_left = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);
        crop_right = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);
        crop_top = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);
        crop_bottom = (ngx_uint_t) ngx_rtmp_bit_read_golomb(&br);

    } else {

        crop_left = 0;
        crop_right = 0;
        crop_top = 0;
        crop_bottom = 0;
    }

    ctx->width = (width + 1) * 16 - (crop_left + crop_right) * 2;
    ctx->height = (2 - frame_mbs_only) * (height + 1) * 16 -
                  (crop_top + crop_bottom) * 2;

    ngx_log_debug7(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "codec: avc header "
                   "profile=%ui, compat=%ui, level=%ui, "
                   "nal_bytes=%ui, ref_frames=%ui, width=%ui, height=%ui",
                   ctx->avc_profile, ctx->avc_compat, ctx->avc_level,
                   ctx->avc_nal_bytes, ctx->avc_ref_frames,
                   ctx->width, ctx->height);
}
