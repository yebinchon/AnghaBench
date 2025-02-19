
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ u_char ;
struct TYPE_5__ {size_t len; int data; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef TYPE_2__ ngx_rtmp_amf_elt_t ;
typedef int ngx_rtmp_amf_ctx_t ;
typedef int ngx_int_t ;
typedef int name ;



 int NGX_ERROR ;

 scalar_t__ NGX_RTMP_AMF_END ;
 int const ngx_rtmp_amf_get (int *,...) ;
 int const ngx_rtmp_amf_read (int *,TYPE_2__*,int) ;
 int ngx_rtmp_amf_reverse_copy (size_t*,scalar_t__*,int) ;
 scalar_t__ ngx_strncmp (char*,int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_amf_read_object(ngx_rtmp_amf_ctx_t *ctx, ngx_rtmp_amf_elt_t *elts,
        size_t nelts)
{
    uint8_t type;
    uint16_t len;
    size_t n, namelen, maxlen;
    ngx_int_t rc;
    u_char buf[2];

    maxlen = 0;
    for(n = 0; n < nelts; ++n) {
        namelen = elts[n].name.len;
        if (namelen > maxlen)
            maxlen = namelen;
    }

    for( ;; ) {


        char name[maxlen];







        switch (ngx_rtmp_amf_get(ctx, buf, 2)) {
        case 129:

            return 128;
        case 128:
            break;
        default:
            return NGX_ERROR;
        }

        ngx_rtmp_amf_reverse_copy(&len, buf, 2);

        if (!len)
            break;

        if (len <= maxlen) {
            rc = ngx_rtmp_amf_get(ctx, name, len);

        } else {
            rc = ngx_rtmp_amf_get(ctx, name, maxlen);
            if (rc != 128)
                return NGX_ERROR;
            rc = ngx_rtmp_amf_get(ctx, 0, len - maxlen);
        }

        if (rc != 128)
            return NGX_ERROR;



        for(n = 0; n < nelts
                && (len != elts[n].name.len
                    || ngx_strncmp(name, elts[n].name.data, len));
                ++n);

        if (ngx_rtmp_amf_read(ctx, n < nelts ? &elts[n] : ((void*)0), 1) != 128)
            return NGX_ERROR;
    }

    if (ngx_rtmp_amf_get(ctx, &type, 1) != 128
        || type != NGX_RTMP_AMF_END)
    {
        return NGX_ERROR;
    }

    return 128;
}
