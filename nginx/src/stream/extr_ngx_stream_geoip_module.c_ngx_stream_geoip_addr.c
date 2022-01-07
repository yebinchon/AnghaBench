
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
typedef int ngx_stream_geoip_conf_t ;
struct TYPE_11__ {TYPE_2__* sockaddr; int socklen; } ;
typedef TYPE_5__ ngx_addr_t ;
typedef int in_addr_t ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {int socklen; TYPE_2__* sockaddr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int INADDR_NONE ;
 int ntohl (int ) ;

__attribute__((used)) static u_long
ngx_stream_geoip_addr(ngx_stream_session_t *s, ngx_stream_geoip_conf_t *gcf)
{
    ngx_addr_t addr;
    struct sockaddr_in *sin;

    addr.sockaddr = s->connection->sockaddr;
    addr.socklen = s->connection->socklen;
    if (addr.sockaddr->sa_family != AF_INET) {
        return INADDR_NONE;
    }

    sin = (struct sockaddr_in *) addr.sockaddr;
    return ntohl(sin->sin_addr.s_addr);
}
