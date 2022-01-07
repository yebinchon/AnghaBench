
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_fetch (int **,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_fetch_uint32(ngx_chain_t **in, uint32_t *ret, ngx_int_t n)
{
    u_char *r = (u_char *) ret;
    ngx_int_t rc;

    *ret = 0;

    while (--n >= 0) {
        rc = ngx_rtmp_fetch(in, &r[n]);
        if (rc != NGX_OK) {
            return rc;
        }
    }

    return NGX_OK;
}
