
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_field_16 (int *,int) ;
 int ngx_rtmp_mp4_field_24 (int *,int ) ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;
 int ngx_rtmp_mp4_field_8 (int *,int) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;

ngx_int_t
ngx_rtmp_mp4_write_sidx(ngx_buf_t *b, ngx_uint_t reference_size,
    uint32_t earliest_pres_time, uint32_t latest_pres_time)
{
    u_char *pos;
    uint32_t duration;

    duration = latest_pres_time - earliest_pres_time;

    pos = ngx_rtmp_mp4_start_box(b, "sidx");


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 1);


    ngx_rtmp_mp4_field_32(b, 1000);


    ngx_rtmp_mp4_field_32(b, earliest_pres_time);


    ngx_rtmp_mp4_field_32(b, duration);


    ngx_rtmp_mp4_field_16(b, 0);


    ngx_rtmp_mp4_field_16(b, 1);


    ngx_rtmp_mp4_field_32(b, reference_size);


    ngx_rtmp_mp4_field_32(b, duration);


    ngx_rtmp_mp4_field_8(b, 0x90);


    ngx_rtmp_mp4_field_24(b, 0);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
