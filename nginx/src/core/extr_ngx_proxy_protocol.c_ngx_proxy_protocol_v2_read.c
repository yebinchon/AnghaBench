
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int u_char ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int socklen_t ;
typedef int ngx_uint_t ;
struct TYPE_16__ {int sin6_addr; int sin6_port; void* sin6_family; } ;
struct TYPE_15__ {int sin_addr; int sin_port; void* sin_family; } ;
struct TYPE_17__ {int sockaddr; TYPE_2__ sockaddr_in6; TYPE_1__ sockaddr_in; } ;
typedef TYPE_3__ ngx_sockaddr_t ;
struct TYPE_14__ {int * data; void* len; } ;
struct TYPE_13__ {int * data; void* len; } ;
struct TYPE_18__ {void* dst_port; TYPE_12__ dst_addr; void* src_port; TYPE_11__ src_addr; } ;
typedef TYPE_4__ ngx_proxy_protocol_t ;
struct TYPE_19__ {int dst_port; int src_port; int dst_addr; int src_addr; } ;
typedef TYPE_5__ ngx_proxy_protocol_inet_addrs_t ;
struct TYPE_20__ {int dst_port; int src_port; int dst_addr; int src_addr; } ;
typedef TYPE_6__ ngx_proxy_protocol_inet6_addrs_t ;
struct TYPE_21__ {int version_command; int family_transport; int len; } ;
typedef TYPE_7__ ngx_proxy_protocol_header_t ;
struct TYPE_22__ {TYPE_4__* proxy_protocol; int log; int pool; } ;
typedef TYPE_8__ ngx_connection_t ;


 void* AF_INET ;
 void* AF_INET6 ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_LOG_ERR ;


 int NGX_SOCKADDR_STRLEN ;
 int memcpy (int *,int ,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,TYPE_11__*,void*,TYPE_12__*,void*) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 void* ngx_pnalloc (int ,int ) ;
 void* ngx_proxy_protocol_parse_uint16 (int ) ;
 void* ngx_sock_ntop (int *,int,int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_proxy_protocol_v2_read(ngx_connection_t *c, u_char *buf, u_char *last)
{
    u_char *end;
    size_t len;
    socklen_t socklen;
    ngx_uint_t version, command, family, transport;
    ngx_sockaddr_t src_sockaddr, dst_sockaddr;
    ngx_proxy_protocol_t *pp;
    ngx_proxy_protocol_header_t *header;
    ngx_proxy_protocol_inet_addrs_t *in;




    header = (ngx_proxy_protocol_header_t *) buf;

    buf += sizeof(ngx_proxy_protocol_header_t);

    version = header->version_command >> 4;

    if (version != 2) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "unknown PROXY protocol version: %ui", version);
        return ((void*)0);
    }

    len = ngx_proxy_protocol_parse_uint16(header->len);

    if ((size_t) (last - buf) < len) {
        ngx_log_error(NGX_LOG_ERR, c->log, 0, "header is too large");
        return ((void*)0);
    }

    end = buf + len;

    command = header->version_command & 0x0f;


    if (command != 1) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported command %ui", command);
        return end;
    }

    transport = header->family_transport & 0x0f;


    if (transport != 1) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported transport %ui",
                       transport);
        return end;
    }

    pp = ngx_pcalloc(c->pool, sizeof(ngx_proxy_protocol_t));
    if (pp == ((void*)0)) {
        return ((void*)0);
    }

    family = header->family_transport >> 4;

    switch (family) {

    case 129:

        if ((size_t) (end - buf) < sizeof(ngx_proxy_protocol_inet_addrs_t)) {
            return ((void*)0);
        }

        in = (ngx_proxy_protocol_inet_addrs_t *) buf;

        src_sockaddr.sockaddr_in.sin_family = AF_INET;
        src_sockaddr.sockaddr_in.sin_port = 0;
        memcpy(&src_sockaddr.sockaddr_in.sin_addr, in->src_addr, 4);

        dst_sockaddr.sockaddr_in.sin_family = AF_INET;
        dst_sockaddr.sockaddr_in.sin_port = 0;
        memcpy(&dst_sockaddr.sockaddr_in.sin_addr, in->dst_addr, 4);

        pp->src_port = ngx_proxy_protocol_parse_uint16(in->src_port);
        pp->dst_port = ngx_proxy_protocol_parse_uint16(in->dst_port);

        socklen = sizeof(struct sockaddr_in);

        buf += sizeof(ngx_proxy_protocol_inet_addrs_t);

        break;
    default:
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 unsupported address family %ui",
                       family);
        return end;
    }

    pp->src_addr.data = ngx_pnalloc(c->pool, NGX_SOCKADDR_STRLEN);
    if (pp->src_addr.data == ((void*)0)) {
        return ((void*)0);
    }

    pp->src_addr.len = ngx_sock_ntop(&src_sockaddr.sockaddr, socklen,
                                     pp->src_addr.data, NGX_SOCKADDR_STRLEN, 0);

    pp->dst_addr.data = ngx_pnalloc(c->pool, NGX_SOCKADDR_STRLEN);
    if (pp->dst_addr.data == ((void*)0)) {
        return ((void*)0);
    }

    pp->dst_addr.len = ngx_sock_ntop(&dst_sockaddr.sockaddr, socklen,
                                     pp->dst_addr.data, NGX_SOCKADDR_STRLEN, 0);

    ngx_log_debug4(NGX_LOG_DEBUG_CORE, c->log, 0,
                   "PROXY protocol v2 src: %V %d, dst: %V %d",
                   &pp->src_addr, pp->src_port, &pp->dst_addr, pp->dst_port);

    if (buf < end) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, c->log, 0,
                       "PROXY protocol v2 %z bytes of tlv ignored", end - buf);
    }

    c->proxy_protocol = pp;

    return end;
}
