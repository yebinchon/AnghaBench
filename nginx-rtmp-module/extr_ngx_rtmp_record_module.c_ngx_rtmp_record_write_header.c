
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_file_t ;
typedef int flv_header ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_write_file (int *,int*,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_record_write_header(ngx_file_t *file)
{
    static u_char flv_header[] = {
        0x46,
        0x4c,
        0x56,
        0x01,
        0x05,
        0x00,
        0x00,
        0x00,
        0x09,
        0x00,
        0x00,
        0x00,
        0x00
    };

    return ngx_write_file(file, flv_header, sizeof(flv_header), 0) == NGX_ERROR
           ? NGX_ERROR
           : NGX_OK;
}
