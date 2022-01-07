
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef scalar_t__ ngx_rtmp_mp4_track_type_t ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 scalar_t__ NGX_RTMP_MP4_VIDEO_TRACK ;
 int ngx_rtmp_codec_module ;
 TYPE_1__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_mp4_field_16 (int *,int) ;
 int ngx_rtmp_mp4_field_24 (int *,int) ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;
 int ngx_rtmp_mp4_field_8 (int *,int ) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;
 int ngx_rtmp_mp4_write_matrix (int *,int,int ,int ,int,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_tkhd(ngx_rtmp_session_t *s, ngx_buf_t *b,
    ngx_rtmp_mp4_track_type_t ttype)
{
    u_char *pos;
    ngx_rtmp_codec_ctx_t *codec_ctx;

    codec_ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    pos = ngx_rtmp_mp4_start_box(b, "tkhd");


    ngx_rtmp_mp4_field_8(b, 0);


    ngx_rtmp_mp4_field_24(b, 0x0000000f);


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 1);


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_16(b, ttype == NGX_RTMP_MP4_VIDEO_TRACK ? 0 : 0x0100);


    ngx_rtmp_mp4_field_16(b, 0);

    ngx_rtmp_mp4_write_matrix(b, 1, 0, 0, 1, 0, 0);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        ngx_rtmp_mp4_field_32(b, (uint32_t) codec_ctx->width << 16);
        ngx_rtmp_mp4_field_32(b, (uint32_t) codec_ctx->height << 16);
    } else {
        ngx_rtmp_mp4_field_32(b, 0);
        ngx_rtmp_mp4_field_32(b, 0);
    }

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
