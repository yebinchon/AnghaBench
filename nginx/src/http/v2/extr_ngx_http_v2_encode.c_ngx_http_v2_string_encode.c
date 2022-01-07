
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;


 int NGX_HTTP_V2_ENCODE_HUFF ;
 int NGX_HTTP_V2_ENCODE_RAW ;
 int * ngx_cpymem (int *,int *,size_t) ;
 size_t ngx_http_v2_huff_encode (int *,size_t,int *,scalar_t__) ;
 int ngx_http_v2_prefix (int) ;
 int * ngx_http_v2_write_int (int *,int ,size_t) ;
 int ngx_strlow (int *,int *,size_t) ;

u_char *
ngx_http_v2_string_encode(u_char *dst, u_char *src, size_t len, u_char *tmp,
    ngx_uint_t lower)
{
    size_t hlen;

    hlen = ngx_http_v2_huff_encode(src, len, tmp, lower);

    if (hlen > 0) {
        *dst = NGX_HTTP_V2_ENCODE_HUFF;
        dst = ngx_http_v2_write_int(dst, ngx_http_v2_prefix(7), hlen);
        return ngx_cpymem(dst, tmp, hlen);
    }

    *dst = NGX_HTTP_V2_ENCODE_RAW;
    dst = ngx_http_v2_write_int(dst, ngx_http_v2_prefix(7), len);

    if (lower) {
        ngx_strlow(dst, src, len);
        return dst + len;
    }

    return ngx_cpymem(dst, src, len);
}
