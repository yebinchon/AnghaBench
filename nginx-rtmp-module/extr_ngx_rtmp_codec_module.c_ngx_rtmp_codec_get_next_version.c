
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_uint_t ;



__attribute__((used)) static ngx_uint_t
ngx_rtmp_codec_get_next_version()
{
    ngx_uint_t v;
    static ngx_uint_t version;

    do {
        v = ++version;
    } while (v == 0);

    return v;
}
