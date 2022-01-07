
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_core_srv_conf_t ;
typedef int ngx_chain_t ;


 int * ngx_rtmp_alloc_shared_buf (int *) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_alloc_amf_buf(void *arg)
{
    return ngx_rtmp_alloc_shared_buf((ngx_rtmp_core_srv_conf_t *)arg);
}
