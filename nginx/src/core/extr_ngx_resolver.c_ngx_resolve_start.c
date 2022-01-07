
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_18__ {scalar_t__ nelts; } ;
struct TYPE_19__ {TYPE_4__ connections; } ;
typedef TYPE_5__ ngx_resolver_t ;
struct TYPE_17__ {scalar_t__ s_addr; } ;
struct TYPE_14__ {TYPE_3__ sin_addr; int sin_family; } ;
struct TYPE_16__ {int socklen; struct sockaddr* sockaddr; } ;
struct TYPE_15__ {int len; int data; } ;
struct TYPE_20__ {int naddrs; int quick; TYPE_5__* resolver; TYPE_12__ sin; TYPE_2__ addr; TYPE_2__* addrs; int state; TYPE_1__ name; } ;
typedef TYPE_6__ ngx_resolver_ctx_t ;
typedef scalar_t__ in_addr_t ;


 int AF_INET ;
 scalar_t__ INADDR_NONE ;
 TYPE_6__* NGX_NO_RESOLVER ;
 int NGX_OK ;
 scalar_t__ ngx_inet_addr (int ,int ) ;
 int ngx_memzero (TYPE_12__*,int) ;
 TYPE_6__* ngx_resolver_calloc (TYPE_5__*,int) ;

ngx_resolver_ctx_t *
ngx_resolve_start(ngx_resolver_t *r, ngx_resolver_ctx_t *temp)
{
    in_addr_t addr;
    ngx_resolver_ctx_t *ctx;

    if (temp) {
        addr = ngx_inet_addr(temp->name.data, temp->name.len);

        if (addr != INADDR_NONE) {
            temp->resolver = r;
            temp->state = NGX_OK;
            temp->naddrs = 1;
            temp->addrs = &temp->addr;
            temp->addr.sockaddr = (struct sockaddr *) &temp->sin;
            temp->addr.socklen = sizeof(struct sockaddr_in);
            ngx_memzero(&temp->sin, sizeof(struct sockaddr_in));
            temp->sin.sin_family = AF_INET;
            temp->sin.sin_addr.s_addr = addr;
            temp->quick = 1;

            return temp;
        }
    }

    if (r->connections.nelts == 0) {
        return NGX_NO_RESOLVER;
    }

    ctx = ngx_resolver_calloc(r, sizeof(ngx_resolver_ctx_t));

    if (ctx) {
        ctx->resolver = r;
    }

    return ctx;
}
