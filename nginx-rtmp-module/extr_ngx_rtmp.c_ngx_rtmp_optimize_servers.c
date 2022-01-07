
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_28__ {size_t naddrs; } ;
typedef TYPE_5__ ngx_rtmp_port_t ;
struct TYPE_24__ {size_t nelts; TYPE_7__* elts; } ;
struct TYPE_29__ {TYPE_1__ addrs; } ;
typedef TYPE_6__ ngx_rtmp_conf_port_t ;
struct TYPE_30__ {int bind; int ipv6only; int tcp_keepcnt; int tcp_keepintvl; int tcp_keepidle; int so_keepalive; int socklen; int sockaddr; scalar_t__ wildcard; } ;
typedef TYPE_7__ ngx_rtmp_conf_addr_t ;
struct TYPE_26__ {int handler; int * data; } ;
struct TYPE_31__ {int addr_ntop; int pool_size; TYPE_4__* sockaddr; TYPE_5__* servers; int ipv6only; int keepcnt; int keepintvl; int keepidle; int keepalive; TYPE_3__ log; int addr_text; int * logp; int handler; } ;
typedef TYPE_8__ ngx_listening_t ;
struct TYPE_32__ {int pool; TYPE_2__* cycle; } ;
typedef TYPE_9__ ngx_conf_t ;
struct TYPE_23__ {size_t nelts; TYPE_6__* elts; } ;
typedef TYPE_10__ ngx_array_t ;
struct TYPE_27__ {int sa_family; } ;
struct TYPE_25__ {int new_log; } ;



 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_OK ;
 int ngx_accept_log_error ;
 TYPE_8__* ngx_create_listening (TYPE_9__*,int ,int ) ;
 TYPE_5__* ngx_palloc (int ,int) ;
 int ngx_rtmp_add_addrs (TYPE_9__*,TYPE_5__*,TYPE_7__*) ;
 int ngx_rtmp_add_addrs6 (TYPE_9__*,TYPE_5__*,TYPE_7__*) ;
 int ngx_rtmp_cmp_conf_addrs ;
 int ngx_rtmp_init_connection ;
 int ngx_sort (TYPE_7__*,size_t,int,int ) ;

__attribute__((used)) static char *
ngx_rtmp_optimize_servers(ngx_conf_t *cf, ngx_array_t *ports)
{
    ngx_uint_t i, p, last, bind_wildcard;
    ngx_listening_t *ls;
    ngx_rtmp_port_t *mport;
    ngx_rtmp_conf_port_t *port;
    ngx_rtmp_conf_addr_t *addr;

    port = ports->elts;
    for (p = 0; p < ports->nelts; p++) {

        ngx_sort(port[p].addrs.elts, (size_t) port[p].addrs.nelts,
                 sizeof(ngx_rtmp_conf_addr_t), ngx_rtmp_cmp_conf_addrs);

        addr = port[p].addrs.elts;
        last = port[p].addrs.nelts;






        if (addr[last - 1].wildcard) {
            addr[last - 1].bind = 1;
            bind_wildcard = 1;

        } else {
            bind_wildcard = 0;
        }

        i = 0;

        while (i < last) {

            if (bind_wildcard && !addr[i].bind) {
                i++;
                continue;
            }

            ls = ngx_create_listening(cf, addr[i].sockaddr, addr[i].socklen);
            if (ls == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ls->addr_ntop = 1;
            ls->handler = ngx_rtmp_init_connection;
            ls->pool_size = 4096;


            ls->logp = &cf->cycle->new_log;
            ls->log.data = &ls->addr_text;
            ls->log.handler = ngx_accept_log_error;

            ls->keepalive = addr[i].so_keepalive;
            mport = ngx_palloc(cf->pool, sizeof(ngx_rtmp_port_t));
            if (mport == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ls->servers = mport;

            if (i == last - 1) {
                mport->naddrs = last;

            } else {
                mport->naddrs = 1;
                i = 0;
            }

            switch (ls->sockaddr->sa_family) {







            default:
                if (ngx_rtmp_add_addrs(cf, mport, addr) != NGX_OK) {
                    return NGX_CONF_ERROR;
                }
                break;
            }

            addr++;
            last--;
        }
    }

    return NGX_CONF_OK;
}
