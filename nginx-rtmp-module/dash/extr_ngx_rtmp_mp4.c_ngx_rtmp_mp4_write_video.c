
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_codec_module ;
 TYPE_1__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_mp4_field_16 (int *,int) ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;
 int ngx_rtmp_mp4_write_avcc (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_video(ngx_rtmp_session_t *s, ngx_buf_t *b)
{
    u_char *pos;
    ngx_rtmp_codec_ctx_t *codec_ctx;

    codec_ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    pos = ngx_rtmp_mp4_start_box(b, "avc1");


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_16(b, 0);


    ngx_rtmp_mp4_field_16(b, 1);


    ngx_rtmp_mp4_field_16(b, 0);
    ngx_rtmp_mp4_field_16(b, 0);


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_16(b, (uint16_t) codec_ctx->width);
    ngx_rtmp_mp4_field_16(b, (uint16_t) codec_ctx->height);


    ngx_rtmp_mp4_field_32(b, 0x00480000);
    ngx_rtmp_mp4_field_32(b, 0x00480000);


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_16(b, 1);


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_16(b, 0x18);
    ngx_rtmp_mp4_field_16(b, 0xffff);

    ngx_rtmp_mp4_write_avcc(s, b);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
