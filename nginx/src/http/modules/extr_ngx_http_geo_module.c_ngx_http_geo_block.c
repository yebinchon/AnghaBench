
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct in6_addr {int s6_addr; } ;
typedef int ngx_uint_t ;
struct TYPE_29__ {char* data; int len; } ;
typedef TYPE_5__ ngx_str_t ;
typedef int ngx_pool_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_30__ {uintptr_t data; int get_handler; } ;
typedef TYPE_6__ ngx_http_variable_t ;
typedef int ngx_http_geo_range_t ;
typedef int ngx_http_geo_header_t ;
struct TYPE_25__ {int * tree6; int * tree; } ;
struct TYPE_28__ {int * default_value; TYPE_12__** low; } ;
struct TYPE_26__ {TYPE_1__ trees; TYPE_4__ high; } ;
struct TYPE_31__ {scalar_t__ index; TYPE_2__ u; int proxy_recursive; int proxies; } ;
typedef TYPE_7__ ngx_http_geo_ctx_t ;
struct TYPE_32__ {int data_size; int allow_binary_include; int entries; int includes; int * temp_pool; int * tree6; int * tree; TYPE_4__ high; int outside_entries; int binary_include; scalar_t__ ranges; int proxy_recursive; int proxies; int * pool; int sentinel; int rbtree; } ;
typedef TYPE_8__ ngx_http_geo_conf_ctx_t ;
struct TYPE_33__ {int * pool; void* handler_conf; int handler; TYPE_8__* ctx; int log; TYPE_3__* args; } ;
typedef TYPE_9__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_23__ {int nelts; int elts; } ;
typedef TYPE_10__ ngx_array_t ;
struct TYPE_27__ {int nelts; TYPE_5__* elts; } ;
struct TYPE_24__ {int * value; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_DEFAULT_POOL_SIZE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_9__*,int ,char*,TYPE_5__*) ;
 char* ngx_conf_parse (TYPE_9__*,int *) ;
 void* ngx_create_pool (int ,int ) ;
 int ngx_destroy_pool (int *) ;
 TYPE_6__* ngx_http_add_variable (TYPE_9__*,TYPE_5__*,int ) ;
 int ngx_http_geo ;
 int ngx_http_geo_cidr_variable ;
 int ngx_http_geo_create_binary_base (TYPE_8__*) ;
 int ngx_http_geo_range_variable ;
 scalar_t__ ngx_http_get_variable_index (TYPE_9__*,TYPE_5__*) ;
 int ngx_http_variable_null_value ;
 int ngx_memcpy (TYPE_12__*,int ,size_t) ;
 int ngx_memzero (TYPE_8__*,int) ;
 void* ngx_palloc (int *,int) ;
 scalar_t__ ngx_radix128tree_insert (int *,int ,int ,uintptr_t) ;
 scalar_t__ ngx_radix32tree_insert (int *,int ,int ,uintptr_t) ;
 void* ngx_radix_tree_create (int *,int) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 int ngx_str_rbtree_insert_value ;

__attribute__((used)) static char *
ngx_http_geo_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    size_t len;
    ngx_str_t *value, name;
    ngx_uint_t i;
    ngx_conf_t save;
    ngx_pool_t *pool;
    ngx_array_t *a;
    ngx_http_variable_t *var;
    ngx_http_geo_ctx_t *geo;
    ngx_http_geo_conf_ctx_t ctx;




    value = cf->args->elts;

    geo = ngx_palloc(cf->pool, sizeof(ngx_http_geo_ctx_t));
    if (geo == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    name = value[1];

    if (name.data[0] != '$') {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"%V\"", &name);
        return NGX_CONF_ERROR;
    }

    name.len--;
    name.data++;

    if (cf->args->nelts == 3) {

        geo->index = ngx_http_get_variable_index(cf, &name);
        if (geo->index == NGX_ERROR) {
            return NGX_CONF_ERROR;
        }

        name = value[2];

        if (name.data[0] != '$') {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid variable name \"%V\"", &name);
            return NGX_CONF_ERROR;
        }

        name.len--;
        name.data++;

    } else {
        geo->index = -1;
    }

    var = ngx_http_add_variable(cf, &name, NGX_HTTP_VAR_CHANGEABLE);
    if (var == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    pool = ngx_create_pool(NGX_DEFAULT_POOL_SIZE, cf->log);
    if (pool == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_memzero(&ctx, sizeof(ngx_http_geo_conf_ctx_t));

    ctx.temp_pool = ngx_create_pool(NGX_DEFAULT_POOL_SIZE, cf->log);
    if (ctx.temp_pool == ((void*)0)) {
        ngx_destroy_pool(pool);
        return NGX_CONF_ERROR;
    }

    ngx_rbtree_init(&ctx.rbtree, &ctx.sentinel, ngx_str_rbtree_insert_value);

    ctx.pool = cf->pool;
    ctx.data_size = sizeof(ngx_http_geo_header_t)
                  + sizeof(ngx_http_variable_value_t)
                  + 0x10000 * sizeof(ngx_http_geo_range_t *);
    ctx.allow_binary_include = 1;

    save = *cf;
    cf->pool = pool;
    cf->ctx = &ctx;
    cf->handler = ngx_http_geo;
    cf->handler_conf = conf;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = save;

    if (rv != NGX_CONF_OK) {
        goto failed;
    }

    geo->proxies = ctx.proxies;
    geo->proxy_recursive = ctx.proxy_recursive;

    if (ctx.ranges) {

        if (ctx.high.low && !ctx.binary_include) {
            for (i = 0; i < 0x10000; i++) {
                a = (ngx_array_t *) ctx.high.low[i];

                if (a == ((void*)0)) {
                    continue;
                }

                if (a->nelts == 0) {
                    ctx.high.low[i] = ((void*)0);
                    continue;
                }

                len = a->nelts * sizeof(ngx_http_geo_range_t);

                ctx.high.low[i] = ngx_palloc(cf->pool, len + sizeof(void *));
                if (ctx.high.low[i] == ((void*)0)) {
                    goto failed;
                }

                ngx_memcpy(ctx.high.low[i], a->elts, len);
                ctx.high.low[i][a->nelts].value = ((void*)0);
                ctx.data_size += len + sizeof(void *);
            }

            if (ctx.allow_binary_include
                && !ctx.outside_entries
                && ctx.entries > 100000
                && ctx.includes == 1)
            {
                ngx_http_geo_create_binary_base(&ctx);
            }
        }

        if (ctx.high.default_value == ((void*)0)) {
            ctx.high.default_value = &ngx_http_variable_null_value;
        }

        geo->u.high = ctx.high;

        var->get_handler = ngx_http_geo_range_variable;
        var->data = (uintptr_t) geo;

    } else {
        if (ctx.tree == ((void*)0)) {
            ctx.tree = ngx_radix_tree_create(cf->pool, -1);
            if (ctx.tree == ((void*)0)) {
                goto failed;
            }
        }

        geo->u.trees.tree = ctx.tree;
        var->get_handler = ngx_http_geo_cidr_variable;
        var->data = (uintptr_t) geo;

        if (ngx_radix32tree_insert(ctx.tree, 0, 0,
                                   (uintptr_t) &ngx_http_variable_null_value)
            == NGX_ERROR)
        {
            goto failed;
        }
    }

    ngx_destroy_pool(ctx.temp_pool);
    ngx_destroy_pool(pool);

    return NGX_CONF_OK;

failed:

    ngx_destroy_pool(ctx.temp_pool);
    ngx_destroy_pool(pool);

    return NGX_CONF_ERROR;
}
