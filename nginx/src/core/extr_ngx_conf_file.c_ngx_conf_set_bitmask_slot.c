
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_13__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
struct TYPE_14__ {size_t mask; TYPE_2__ name; } ;
typedef TYPE_5__ ngx_conf_bitmask_t ;
struct TYPE_15__ {int offset; TYPE_5__* post; } ;
typedef TYPE_6__ ngx_command_t ;
struct TYPE_10__ {size_t nelts; TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,int ) ;
 scalar_t__ ngx_strcasecmp (int ,int ) ;

char *
ngx_conf_set_bitmask_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_uint_t *np, i, m;
    ngx_str_t *value;
    ngx_conf_bitmask_t *mask;


    np = (ngx_uint_t *) (p + cmd->offset);
    value = cf->args->elts;
    mask = cmd->post;

    for (i = 1; i < cf->args->nelts; i++) {
        for (m = 0; mask[m].name.len != 0; m++) {

            if (mask[m].name.len != value[i].len
                || ngx_strcasecmp(mask[m].name.data, value[i].data) != 0)
            {
                continue;
            }

            if (*np & mask[m].mask) {
                ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                                   "duplicate value \"%s\"", value[i].data);

            } else {
                *np |= mask[m].mask;
            }

            break;
        }

        if (mask[m].name.len == 0) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid value \"%s\"", value[i].data);

            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
