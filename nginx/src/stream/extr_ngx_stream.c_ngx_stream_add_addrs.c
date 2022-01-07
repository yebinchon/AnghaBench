
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef size_t ngx_uint_t ;
struct TYPE_15__ {int naddrs; TYPE_5__* addrs; } ;
typedef TYPE_4__ ngx_stream_port_t ;
struct TYPE_13__ {int addr_text; int proxy_protocol; int ssl; int ctx; } ;
struct TYPE_16__ {TYPE_2__ conf; int addr; } ;
typedef TYPE_5__ ngx_stream_in_addr_t ;
struct TYPE_14__ {int addr_text; int proxy_protocol; int ssl; int ctx; scalar_t__ sockaddr; } ;
struct TYPE_17__ {TYPE_3__ opt; } ;
typedef TYPE_6__ ngx_stream_conf_addr_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {int pool; } ;
typedef TYPE_7__ ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_5__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_stream_add_addrs(ngx_conf_t *cf, ngx_stream_port_t *stport,
    ngx_stream_conf_addr_t *addr)
{
    ngx_uint_t i;
    struct sockaddr_in *sin;
    ngx_stream_in_addr_t *addrs;

    stport->addrs = ngx_pcalloc(cf->pool,
                                stport->naddrs * sizeof(ngx_stream_in_addr_t));
    if (stport->addrs == ((void*)0)) {
        return NGX_ERROR;
    }

    addrs = stport->addrs;

    for (i = 0; i < stport->naddrs; i++) {

        sin = (struct sockaddr_in *) addr[i].opt.sockaddr;
        addrs[i].addr = sin->sin_addr.s_addr;

        addrs[i].conf.ctx = addr[i].opt.ctx;



        addrs[i].conf.proxy_protocol = addr[i].opt.proxy_protocol;
        addrs[i].conf.addr_text = addr[i].opt.addr_text;
    }

    return NGX_OK;
}
