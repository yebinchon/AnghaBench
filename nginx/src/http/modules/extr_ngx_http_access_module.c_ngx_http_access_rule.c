
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int ngx_uint_t ;
struct TYPE_24__ {int len; char* data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_25__ {int deny; } ;
typedef TYPE_6__ ngx_http_access_rule_un_t ;
struct TYPE_26__ {int deny; int addr; int mask; } ;
typedef TYPE_7__ ngx_http_access_rule_t ;
struct TYPE_27__ {int deny; int addr; int mask; } ;
typedef TYPE_8__ ngx_http_access_rule6_t ;
struct TYPE_28__ {int * rules_un; int * rules6; int * rules; } ;
typedef TYPE_9__ ngx_http_access_loc_conf_t ;
struct TYPE_18__ {int pool; TYPE_1__* args; } ;
typedef TYPE_10__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_22__ {int addr; int mask; } ;
struct TYPE_21__ {int addr; int mask; } ;
struct TYPE_23__ {TYPE_3__ in6; TYPE_2__ in; } ;
struct TYPE_19__ {scalar_t__ family; TYPE_4__ u; } ;
typedef TYPE_11__ ngx_cidr_t ;
struct TYPE_20__ {TYPE_5__* elts; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 void* ngx_array_create (int ,int,int) ;
 void* ngx_array_push (int *) ;
 int ngx_conf_log_error (int ,TYPE_10__*,int ,char*,TYPE_5__*) ;
 int ngx_memzero (TYPE_11__*,int) ;
 scalar_t__ ngx_ptocidr (TYPE_5__*,TYPE_11__*) ;
 scalar_t__ ngx_strcmp (char*,char*) ;

__attribute__((used)) static char *
ngx_http_access_rule(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_access_loc_conf_t *alcf = conf;

    ngx_int_t rc;
    ngx_uint_t all;
    ngx_str_t *value;
    ngx_cidr_t cidr;
    ngx_http_access_rule_t *rule;







    all = 0;
    ngx_memzero(&cidr, sizeof(ngx_cidr_t));

    value = cf->args->elts;

    if (value[1].len == 3 && ngx_strcmp(value[1].data, "all") == 0) {
        all = 1;






    } else {
        rc = ngx_ptocidr(&value[1], &cidr);

        if (rc == NGX_ERROR) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                         "invalid parameter \"%V\"", &value[1]);
            return NGX_CONF_ERROR;
        }

        if (rc == NGX_DONE) {
            ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                         "low address bits of %V are meaningless", &value[1]);
        }
    }

    if (cidr.family == AF_INET || all) {

        if (alcf->rules == ((void*)0)) {
            alcf->rules = ngx_array_create(cf->pool, 4,
                                           sizeof(ngx_http_access_rule_t));
            if (alcf->rules == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }

        rule = ngx_array_push(alcf->rules);
        if (rule == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        rule->mask = cidr.u.in.mask;
        rule->addr = cidr.u.in.addr;
        rule->deny = (value[0].data[0] == 'd') ? 1 : 0;
    }
    return NGX_CONF_OK;
}
