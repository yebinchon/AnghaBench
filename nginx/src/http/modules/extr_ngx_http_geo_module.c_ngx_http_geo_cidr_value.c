
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_conf_t ;
struct TYPE_11__ {int addr; int mask; } ;
struct TYPE_10__ {TYPE_2__ in; } ;
struct TYPE_13__ {TYPE_1__ u; int family; } ;
typedef TYPE_4__ ngx_cidr_t ;


 int AF_INET ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,int *,int ,char*,TYPE_3__*) ;
 scalar_t__ ngx_ptocidr (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_geo_cidr_value(ngx_conf_t *cf, ngx_str_t *net, ngx_cidr_t *cidr)
{
    ngx_int_t rc;

    if (ngx_strcmp(net->data, "255.255.255.255") == 0) {
        cidr->family = AF_INET;
        cidr->u.in.addr = 0xffffffff;
        cidr->u.in.mask = 0xffffffff;

        return NGX_OK;
    }

    rc = ngx_ptocidr(net, cidr);

    if (rc == NGX_ERROR) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "invalid network \"%V\"", net);
        return NGX_ERROR;
    }

    if (rc == NGX_DONE) {
        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                           "low address bits of %V are meaningless", net);
    }

    return NGX_OK;
}
