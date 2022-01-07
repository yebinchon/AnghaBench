
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_31__ {int s_addr; } ;
struct sockaddr_in {TYPE_6__ sin_addr; } ;
struct TYPE_32__ {int mask; int addr; } ;
struct TYPE_27__ {int s6_addr; } ;
struct TYPE_28__ {TYPE_2__ mask; int addr; } ;
struct TYPE_33__ {TYPE_7__ in; TYPE_3__ in6; } ;
struct TYPE_24__ {int data; } ;
struct TYPE_34__ {int family; int naddrs; TYPE_8__ u; TYPE_5__* addrs; TYPE_11__ host; int err; } ;
typedef TYPE_9__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_23__ {int * from; } ;
typedef TYPE_10__ ngx_stream_realip_srv_conf_t ;
typedef TYPE_11__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_25__ {int pool; TYPE_1__* args; } ;
typedef TYPE_12__ ngx_conf_t ;
typedef int ngx_command_t ;
typedef TYPE_9__ ngx_cidr_t ;
struct TYPE_30__ {TYPE_4__* sockaddr; } ;
struct TYPE_29__ {int sa_family; } ;
struct TYPE_26__ {TYPE_11__* elts; } ;



 int AF_UNIX ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_9__* ngx_array_push (int *) ;
 TYPE_9__* ngx_array_push_n (int *,int) ;
 int ngx_conf_log_error (int ,TYPE_12__*,int ,char*,TYPE_11__*,...) ;
 scalar_t__ ngx_inet_resolve_host (int ,TYPE_9__*) ;
 int ngx_memset (int ,int,int) ;
 int ngx_memzero (TYPE_9__*,int) ;
 scalar_t__ ngx_ptocidr (TYPE_11__*,TYPE_9__*) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_stream_realip_from(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_realip_srv_conf_t *rscf = conf;

    ngx_int_t rc;
    ngx_str_t *value;
    ngx_url_t u;
    ngx_cidr_t c, *cidr;
    ngx_uint_t i;
    struct sockaddr_in *sin;




    value = cf->args->elts;

    if (rscf->from == ((void*)0)) {
        rscf->from = ngx_array_create(cf->pool, 2,
                                      sizeof(ngx_cidr_t));
        if (rscf->from == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }
    rc = ngx_ptocidr(&value[1], &c);

    if (rc != NGX_ERROR) {
        if (rc == NGX_DONE) {
            ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                               "low address bits of %V are meaningless",
                               &value[1]);
        }

        cidr = ngx_array_push(rscf->from);
        if (cidr == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        *cidr = c;

        return NGX_CONF_OK;
    }

    ngx_memzero(&u, sizeof(ngx_url_t));
    u.host = value[1];

    if (ngx_inet_resolve_host(cf->pool, &u) != NGX_OK) {
        if (u.err) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "%s in set_real_ip_from \"%V\"",
                               u.err, &u.host);
        }

        return NGX_CONF_ERROR;
    }

    cidr = ngx_array_push_n(rscf->from, u.naddrs);
    if (cidr == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_memzero(cidr, u.naddrs * sizeof(ngx_cidr_t));

    for (i = 0; i < u.naddrs; i++) {
        cidr[i].family = u.addrs[i].sockaddr->sa_family;

        switch (cidr[i].family) {
        default:
            sin = (struct sockaddr_in *) u.addrs[i].sockaddr;
            cidr[i].u.in.addr = sin->sin_addr.s_addr;
            cidr[i].u.in.mask = 0xffffffff;
            break;
        }
    }

    return NGX_CONF_OK;
}
