
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int type; int len; int data; } ;
typedef TYPE_1__ ngx_rtmp_amf_elt_t ;
typedef int ngx_rtmp_amf_ctx_t ;
typedef scalar_t__ ngx_int_t ;
typedef int elt ;


 scalar_t__ NGX_OK ;
 int NGX_RTMP_AMF_TYPELESS ;
 int ngx_memzero (TYPE_1__*,int) ;
 scalar_t__ ngx_rtmp_amf_get (int *,int*,int) ;
 scalar_t__ ngx_rtmp_amf_read (int *,TYPE_1__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_amf_read_variant(ngx_rtmp_amf_ctx_t *ctx, ngx_rtmp_amf_elt_t *elts,
        size_t nelts)
{
    uint8_t type;
    ngx_int_t rc;
    size_t n;
    ngx_rtmp_amf_elt_t elt;

    rc = ngx_rtmp_amf_get(ctx, &type, 1);
    if (rc != NGX_OK) {
        return rc;
    }

    ngx_memzero(&elt, sizeof(elt));
    for (n = 0; n < nelts; ++n, ++elts) {
        if (type == elts->type) {
            elt.data = elts->data;
            elt.len = elts->len;
        }
    }

    elt.type = type | NGX_RTMP_AMF_TYPELESS;

    return ngx_rtmp_amf_read(ctx, &elt, 1);
}
