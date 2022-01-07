
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int ngx_rtmp_fetch (int **,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_fetch_uint8(ngx_chain_t **in, uint8_t *ret)
{
    return ngx_rtmp_fetch(in, (u_char *) ret);
}
