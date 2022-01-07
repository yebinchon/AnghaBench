
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;
struct TYPE_3__ {scalar_t__ end; int last; } ;
typedef TYPE_1__ ngx_buf_t ;
typedef int aud_nal ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_cpymem (int ,int*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_append_aud(ngx_rtmp_session_t *s, ngx_buf_t *out)
{
    static u_char aud_nal[] = { 0x00, 0x00, 0x00, 0x01, 0x09, 0xf0 };

    if (out->last + sizeof(aud_nal) > out->end) {
        return NGX_ERROR;
    }

    out->last = ngx_cpymem(out->last, aud_nal, sizeof(aud_nal));

    return NGX_OK;
}
