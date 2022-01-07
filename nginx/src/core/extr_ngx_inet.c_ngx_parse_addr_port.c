
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_4__ {int sockaddr; } ;
typedef TYPE_1__ ngx_addr_t ;
typedef int in_port_t ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atoi (char*,size_t) ;
 int ngx_inet_set_port (int ,int ) ;
 scalar_t__ ngx_parse_addr (int *,TYPE_1__*,char*,size_t) ;
 char* ngx_strlchr (char*,char*,char) ;

ngx_int_t
ngx_parse_addr_port(ngx_pool_t *pool, ngx_addr_t *addr, u_char *text,
    size_t len)
{
    u_char *p, *last;
    size_t plen;
    ngx_int_t rc, port;

    rc = ngx_parse_addr(pool, addr, text, len);

    if (rc != NGX_DECLINED) {
        return rc;
    }

    last = text + len;
    {
        p = ngx_strlchr(text, last, ':');

        if (p == ((void*)0)) {
            return NGX_DECLINED;
        }
    }

    p++;
    plen = last - p;

    port = ngx_atoi(p, plen);

    if (port < 1 || port > 65535) {
        return NGX_DECLINED;
    }

    len -= plen + 1;

    rc = ngx_parse_addr(pool, addr, text, len);

    if (rc != NGX_OK) {
        return rc;
    }

    ngx_inet_set_port(addr->sockaddr, (in_port_t) port);

    return NGX_OK;
}
