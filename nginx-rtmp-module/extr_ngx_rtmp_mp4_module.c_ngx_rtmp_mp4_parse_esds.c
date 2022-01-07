
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int ngx_rtmp_mp4_parse_descr (int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_esds(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    if (pos + 4 > last) {
        return NGX_ERROR;
    }

    pos += 4;

    return ngx_rtmp_mp4_parse_descr(s, pos, last);
}
