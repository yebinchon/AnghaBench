
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u_char ;
typedef int signature ;
struct TYPE_7__ {int dst_port; int dst_addr; int src_port; int src_addr; } ;
typedef TYPE_1__ ngx_proxy_protocol_t ;
typedef int ngx_proxy_protocol_header_t ;
struct TYPE_8__ {int log; TYPE_1__* proxy_protocol; int pool; } ;
typedef TYPE_2__ ngx_connection_t ;


 char CR ;
 char LF ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_ERR ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int *,int ,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,size_t,char*) ;
 TYPE_1__* ngx_pcalloc (int ,int) ;
 char* ngx_proxy_protocol_read_addr (TYPE_2__*,char*,char*,int *) ;
 char* ngx_proxy_protocol_read_port (char*,char*,int *,char) ;
 char* ngx_proxy_protocol_v2_read (TYPE_2__*,char*,char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

u_char *
ngx_proxy_protocol_read(ngx_connection_t *c, u_char *buf, u_char *last)
{
    size_t len;
    u_char *p;
    ngx_proxy_protocol_t *pp;

    static const u_char signature[] = "\r\n\r\n\0\r\nQUIT\n";

    p = buf;
    len = last - buf;

    if (len >= sizeof(ngx_proxy_protocol_header_t)
        && memcmp(p, signature, sizeof(signature) - 1) == 0)
    {
        return ngx_proxy_protocol_v2_read(c, buf, last);
    }

    if (len < 8 || ngx_strncmp(p, "PROXY ", 6) != 0) {
        goto invalid;
    }

    p += 6;
    len -= 6;

    if (len >= 7 && ngx_strncmp(p, "UNKNOWN", 7) == 0) {
        ngx_log_debug0(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol unknown protocol");
        p += 7;
        goto skip;
    }

    if (len < 5 || ngx_strncmp(p, "TCP", 3) != 0
        || (p[3] != '4' && p[3] != '6') || p[4] != ' ')
    {
        goto invalid;
    }

    p += 5;

    pp = ngx_pcalloc(c->pool, sizeof(ngx_proxy_protocol_t));
    if (pp == ((void*)0)) {
        return ((void*)0);
    }

    p = ngx_proxy_protocol_read_addr(c, p, last, &pp->src_addr);
    if (p == ((void*)0)) {
        goto invalid;
    }

    p = ngx_proxy_protocol_read_addr(c, p, last, &pp->dst_addr);
    if (p == ((void*)0)) {
        goto invalid;
    }

    p = ngx_proxy_protocol_read_port(p, last, &pp->src_port, ' ');
    if (p == ((void*)0)) {
        goto invalid;
    }

    p = ngx_proxy_protocol_read_port(p, last, &pp->dst_port, CR);
    if (p == ((void*)0)) {
        goto invalid;
    }

    if (p == last) {
        goto invalid;
    }

    if (*p++ != LF) {
        goto invalid;
    }

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "PROXY protocol src: %V %d, dst: %V %d",
                   &pp->src_addr, pp->src_port, &pp->dst_addr, pp->dst_port);

    c->proxy_protocol = pp;

    return p;

skip:

    for ( ; p < last - 1; p++) {
        if (p[0] == CR && p[1] == LF) {
            return p + 2;
        }
    }

invalid:

    ngx_log_error(NGX_LOG_ERR, c->log, 0,
                  "broken header: \"%*s\"", (size_t) (last - buf), buf);

    return ((void*)0);
}
