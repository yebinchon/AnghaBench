
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct TYPE_5__ {char* data; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef TYPE_2__ ngx_rtmp_amf_elt_t ;
typedef int ngx_rtmp_amf_ctx_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_amf_put (int *,char*,int) ;
 char* ngx_rtmp_amf_reverse_copy (int *,int*,int) ;
 scalar_t__ ngx_rtmp_amf_write (int *,TYPE_2__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_amf_write_object(ngx_rtmp_amf_ctx_t *ctx,
        ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    uint16_t len;
    size_t n;
    u_char buf[2];

    for(n = 0; n < nelts; ++n) {

        len = (uint16_t) elts[n].name.len;

        if (ngx_rtmp_amf_put(ctx,
                    ngx_rtmp_amf_reverse_copy(buf,
                        &len, 2), 2) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (ngx_rtmp_amf_put(ctx, elts[n].name.data, len) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_rtmp_amf_write(ctx, &elts[n], 1) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (ngx_rtmp_amf_put(ctx, "\0\0", 2) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
