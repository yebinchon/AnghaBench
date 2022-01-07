
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_6__ {TYPE_1__* url; } ;
typedef TYPE_2__ ngx_rtmp_netcall_session_t ;
struct TYPE_7__ {int * name; int socklen; struct sockaddr* sockaddr; } ;
typedef TYPE_3__ ngx_peer_connection_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int host; int socklen; int sockaddr; } ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_netcall_get_peer(ngx_peer_connection_t *pc, void *data)
{
    ngx_rtmp_netcall_session_t *cs = data;

    pc->sockaddr =(struct sockaddr *)&cs->url->sockaddr;
    pc->socklen = cs->url->socklen;
    pc->name = &cs->url->host;

    return NGX_OK;
}
