
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_15__ {TYPE_1__* aac_header; } ;
typedef TYPE_2__ ngx_rtmp_codec_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int * last; int * pos; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_14__ {TYPE_3__* buf; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_rtmp_codec_module ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_mp4_data (TYPE_3__*,int *,size_t) ;
 int ngx_rtmp_mp4_field_16 (TYPE_3__*,int) ;
 int ngx_rtmp_mp4_field_24 (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_field_32 (TYPE_3__*,int) ;
 int ngx_rtmp_mp4_field_8 (TYPE_3__*,int) ;
 int ngx_rtmp_mp4_put_descr (TYPE_3__*,int,int) ;
 int * ngx_rtmp_mp4_start_box (TYPE_3__*,char*) ;
 int ngx_rtmp_mp4_update_box_size (TYPE_3__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_esds(ngx_rtmp_session_t *s, ngx_buf_t *b)
{
    size_t dsi_len;
    u_char *pos, *dsi;
    ngx_buf_t *db;
    ngx_rtmp_codec_ctx_t *codec_ctx;

    codec_ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_codec_module);

    if (codec_ctx == ((void*)0) || codec_ctx->aac_header == ((void*)0)) {
        return NGX_ERROR;
    }

    db = codec_ctx->aac_header->buf;
    if (db == ((void*)0)) {
        return NGX_ERROR;
    }

    dsi = db->pos + 2;
    if (dsi > db->last) {
        return NGX_ERROR;
    }

    dsi_len = db->last - dsi;

    pos = ngx_rtmp_mp4_start_box(b, "esds");


    ngx_rtmp_mp4_field_32(b, 0);




    ngx_rtmp_mp4_put_descr(b, 0x03, 23 + dsi_len);


    ngx_rtmp_mp4_field_16(b, 1);


    ngx_rtmp_mp4_field_8(b, 0);




    ngx_rtmp_mp4_put_descr(b, 0x04, 15 + dsi_len);


    ngx_rtmp_mp4_field_8(b, 0x40);


    ngx_rtmp_mp4_field_8(b, 0x15);


    ngx_rtmp_mp4_field_24(b, 0);


    ngx_rtmp_mp4_field_32(b, 0x0001F151);


    ngx_rtmp_mp4_field_32(b, 0x0001F14D);




    ngx_rtmp_mp4_put_descr(b, 0x05, dsi_len);
    ngx_rtmp_mp4_data(b, dsi, dsi_len);




    ngx_rtmp_mp4_put_descr(b, 0x06, 1);
    ngx_rtmp_mp4_field_8(b, 0x02);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
