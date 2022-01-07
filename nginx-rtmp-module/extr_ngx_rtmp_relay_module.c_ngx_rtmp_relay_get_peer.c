
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_peer_connection_t ;
typedef int ngx_int_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_get_peer(ngx_peer_connection_t *pc, void *data)
{
    return NGX_OK;
}
