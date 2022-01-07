
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int u_char ;
struct TYPE_16__ {int* s6_addr; } ;
struct sockaddr_in6 {TYPE_15__ sin6_addr; } ;
struct TYPE_17__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_20__ {TYPE_3__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
struct TYPE_21__ {int rules_un; int rules6; int rules; } ;
typedef TYPE_5__ ngx_stream_access_srv_conf_t ;
typedef int ngx_int_t ;
typedef int in_addr_t ;
struct TYPE_19__ {TYPE_2__* sockaddr; } ;
struct TYPE_18__ {int sa_family; } ;





 int IN6_IS_ADDR_V4MAPPED (TYPE_15__*) ;
 int NGX_DECLINED ;
 int htonl (int) ;
 int ngx_stream_access_inet (TYPE_4__*,TYPE_5__*,int ) ;
 int ngx_stream_access_inet6 (TYPE_4__*,TYPE_5__*,int*) ;
 int ngx_stream_access_module ;
 int ngx_stream_access_unix (TYPE_4__*,TYPE_5__*) ;
 TYPE_5__* ngx_stream_get_module_srv_conf (TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_access_handler(ngx_stream_session_t *s)
{
    struct sockaddr_in *sin;
    ngx_stream_access_srv_conf_t *ascf;






    ascf = ngx_stream_get_module_srv_conf(s, ngx_stream_access_module);

    switch (s->connection->sockaddr->sa_family) {

    case 130:
        if (ascf->rules) {
            sin = (struct sockaddr_in *) s->connection->sockaddr;
            return ngx_stream_access_inet(s, ascf, sin->sin_addr.s_addr);
        }
        break;
    }

    return NGX_DECLINED;
}
