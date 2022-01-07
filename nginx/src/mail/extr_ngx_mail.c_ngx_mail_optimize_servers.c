
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_17__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_35__ {size_t naddrs; } ;
typedef TYPE_6__ ngx_mail_port_t ;
struct TYPE_36__ {int error_log; } ;
typedef TYPE_7__ ngx_mail_core_srv_conf_t ;
struct TYPE_30__ {size_t nelts; TYPE_9__* elts; } ;
struct TYPE_37__ {TYPE_1__ addrs; } ;
typedef TYPE_8__ ngx_mail_conf_port_t ;
struct TYPE_33__ {int bind; int ipv6only; int tcp_keepcnt; int tcp_keepintvl; int tcp_keepidle; int so_keepalive; int sndbuf; int rcvbuf; int backlog; TYPE_2__* ctx; int socklen; int sockaddr; scalar_t__ wildcard; } ;
struct TYPE_38__ {TYPE_4__ opt; } ;
typedef TYPE_9__ ngx_mail_conf_addr_t ;
struct TYPE_32__ {int handler; int * data; } ;
struct TYPE_26__ {int addr_ntop; int pool_size; TYPE_5__* sockaddr; TYPE_6__* servers; int ipv6only; int keepcnt; int keepintvl; int keepidle; int keepalive; int sndbuf; int rcvbuf; int backlog; TYPE_3__ log; int addr_text; int logp; int handler; } ;
typedef TYPE_10__ ngx_listening_t ;
struct TYPE_27__ {int pool; } ;
typedef TYPE_11__ ngx_conf_t ;
struct TYPE_28__ {size_t nelts; TYPE_8__* elts; } ;
typedef TYPE_12__ ngx_array_t ;
struct TYPE_34__ {int sa_family; } ;
struct TYPE_31__ {TYPE_7__** srv_conf; } ;
struct TYPE_29__ {size_t ctx_index; } ;



 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_OK ;
 int ngx_accept_log_error ;
 TYPE_10__* ngx_create_listening (TYPE_11__*,int ,int ) ;
 int ngx_mail_add_addrs (TYPE_11__*,TYPE_6__*,TYPE_9__*) ;
 int ngx_mail_add_addrs6 (TYPE_11__*,TYPE_6__*,TYPE_9__*) ;
 int ngx_mail_cmp_conf_addrs ;
 TYPE_17__ ngx_mail_core_module ;
 int ngx_mail_init_connection ;
 TYPE_6__* ngx_palloc (int ,int) ;
 int ngx_sort (TYPE_9__*,size_t,int,int ) ;

__attribute__((used)) static char *
ngx_mail_optimize_servers(ngx_conf_t *cf, ngx_array_t *ports)
{
    ngx_uint_t i, p, last, bind_wildcard;
    ngx_listening_t *ls;
    ngx_mail_port_t *mport;
    ngx_mail_conf_port_t *port;
    ngx_mail_conf_addr_t *addr;
    ngx_mail_core_srv_conf_t *cscf;

    port = ports->elts;
    for (p = 0; p < ports->nelts; p++) {

        ngx_sort(port[p].addrs.elts, (size_t) port[p].addrs.nelts,
                 sizeof(ngx_mail_conf_addr_t), ngx_mail_cmp_conf_addrs);

        addr = port[p].addrs.elts;
        last = port[p].addrs.nelts;






        if (addr[last - 1].opt.wildcard) {
            addr[last - 1].opt.bind = 1;
            bind_wildcard = 1;

        } else {
            bind_wildcard = 0;
        }

        i = 0;

        while (i < last) {

            if (bind_wildcard && !addr[i].opt.bind) {
                i++;
                continue;
            }

            ls = ngx_create_listening(cf, addr[i].opt.sockaddr,
                                      addr[i].opt.socklen);
            if (ls == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ls->addr_ntop = 1;
            ls->handler = ngx_mail_init_connection;
            ls->pool_size = 256;

            cscf = addr->opt.ctx->srv_conf[ngx_mail_core_module.ctx_index];

            ls->logp = cscf->error_log;
            ls->log.data = &ls->addr_text;
            ls->log.handler = ngx_accept_log_error;

            ls->backlog = addr[i].opt.backlog;
            ls->rcvbuf = addr[i].opt.rcvbuf;
            ls->sndbuf = addr[i].opt.sndbuf;

            ls->keepalive = addr[i].opt.so_keepalive;
            mport = ngx_palloc(cf->pool, sizeof(ngx_mail_port_t));
            if (mport == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ls->servers = mport;

            mport->naddrs = i + 1;

            switch (ls->sockaddr->sa_family) {







            default:
                if (ngx_mail_add_addrs(cf, mport, addr) != NGX_OK) {
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
