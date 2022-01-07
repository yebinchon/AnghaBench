
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_rtmp_mp4_parse (int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_stsd(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    if (pos + 8 > last) {
        return NGX_ERROR;
    }

    pos += 8;

    ngx_rtmp_mp4_parse(s, pos, last);

    return NGX_OK;
}
