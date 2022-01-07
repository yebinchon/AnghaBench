
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_17__ {int s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
struct TYPE_20__ {scalar_t__ nelts; } ;
struct TYPE_15__ {TYPE_7__ x_forwarded_for; } ;
struct TYPE_18__ {TYPE_2__ headers_in; TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_19__ {int proxy_recursive; int * proxies; } ;
typedef TYPE_6__ ngx_http_geoip_conf_t ;
typedef TYPE_7__ ngx_array_t ;
struct TYPE_21__ {TYPE_3__* sockaddr; int socklen; } ;
typedef TYPE_8__ ngx_addr_t ;
typedef int in_addr_t ;
struct TYPE_16__ {scalar_t__ sa_family; } ;
struct TYPE_14__ {int socklen; TYPE_3__* sockaddr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int INADDR_NONE ;
 int ngx_http_get_forwarded_addr (TYPE_5__*,TYPE_8__*,TYPE_7__*,int *,int *,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static u_long
ngx_http_geoip_addr(ngx_http_request_t *r, ngx_http_geoip_conf_t *gcf)
{
    ngx_addr_t addr;
    ngx_array_t *xfwd;
    struct sockaddr_in *sin;

    addr.sockaddr = r->connection->sockaddr;
    addr.socklen = r->connection->socklen;


    xfwd = &r->headers_in.x_forwarded_for;

    if (xfwd->nelts > 0 && gcf->proxies != ((void*)0)) {
        (void) ngx_http_get_forwarded_addr(r, &addr, xfwd, ((void*)0),
                                           gcf->proxies, gcf->proxy_recursive);
    }
    if (addr.sockaddr->sa_family != AF_INET) {
        return INADDR_NONE;
    }

    sin = (struct sockaddr_in *) addr.sockaddr;
    return ntohl(sin->sin_addr.s_addr);
}
