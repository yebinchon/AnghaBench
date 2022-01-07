
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int* s6_addr; } ;
struct sockaddr_in6 {TYPE_9__ sin6_addr; } ;
struct TYPE_10__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef int ngx_uint_t ;
struct TYPE_13__ {TYPE_3__* connection; } ;
typedef TYPE_4__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_access_app_conf_t ;
typedef int ngx_int_t ;
typedef int in_addr_t ;
struct TYPE_12__ {TYPE_2__* sockaddr; int log; } ;
struct TYPE_11__ {int sa_family; } ;




 int IN6_IS_ADDR_V4MAPPED (TYPE_9__*) ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int htonl (int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_access_inet (TYPE_4__*,int ,int ) ;
 int ngx_rtmp_access_inet6 (TYPE_4__*,int*,int ) ;
 int ngx_rtmp_access_module ;
 int * ngx_rtmp_get_module_app_conf (TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_access(ngx_rtmp_session_t *s, ngx_uint_t flag)
{
    struct sockaddr_in *sin;
    ngx_rtmp_access_app_conf_t *ascf;






    ascf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_access_module);
    if (ascf == ((void*)0)) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, s->connection->log, 0,
                       "access: NULL app conf");
        return NGX_ERROR;
    }


    if (s->connection->sockaddr == ((void*)0)) {
        return NGX_OK;
    }

    switch (s->connection->sockaddr->sa_family) {

    case 129:
        sin = (struct sockaddr_in *) s->connection->sockaddr;
        return ngx_rtmp_access_inet(s, sin->sin_addr.s_addr, flag);
    }

    return NGX_OK;
}
