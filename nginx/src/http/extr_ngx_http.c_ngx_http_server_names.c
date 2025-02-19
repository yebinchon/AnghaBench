
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_33__ {scalar_t__ regex; int name; int server; } ;
typedef TYPE_7__ ngx_http_server_name_t ;
struct TYPE_32__ {size_t nelts; TYPE_7__* elts; } ;
struct TYPE_34__ {TYPE_6__ server_names; } ;
typedef TYPE_8__ ngx_http_core_srv_conf_t ;
struct TYPE_35__ {int server_names_hash_bucket_size; int server_names_hash_max_size; } ;
typedef TYPE_9__ ngx_http_core_main_conf_t ;
struct TYPE_31__ {size_t nelts; TYPE_8__** elts; } ;
struct TYPE_27__ {int addr_text; } ;
struct TYPE_23__ {size_t nregex; TYPE_7__* regex; TYPE_5__ servers; int * wc_tail; int * wc_head; int hash; TYPE_1__ opt; } ;
typedef TYPE_10__ ngx_http_conf_addr_t ;
typedef int ngx_hash_wildcard_t ;
struct TYPE_30__ {scalar_t__ nelts; int elts; } ;
struct TYPE_29__ {scalar_t__ nelts; int elts; } ;
struct TYPE_28__ {scalar_t__ nelts; int elts; } ;
struct TYPE_24__ {int * temp_pool; TYPE_4__ dns_wc_tail; TYPE_3__ dns_wc_head; TYPE_2__ keys; int pool; } ;
typedef TYPE_11__ ngx_hash_keys_arrays_t ;
typedef int ngx_hash_key_t ;
struct TYPE_25__ {char* name; int * hash; int * temp_pool; int pool; int bucket_size; int max_size; int key; } ;
typedef TYPE_12__ ngx_hash_init_t ;
struct TYPE_26__ {int pool; int log; } ;
typedef TYPE_13__ ngx_conf_t ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 int NGX_DEFAULT_POOL_SIZE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HASH_LARGE ;
 int NGX_HASH_WILDCARD_KEY ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int * ngx_create_pool (int ,int ) ;
 int ngx_destroy_pool (int *) ;
 scalar_t__ ngx_hash_add_key (TYPE_11__*,int *,int ,int ) ;
 scalar_t__ ngx_hash_init (TYPE_12__*,int ,scalar_t__) ;
 int ngx_hash_key_lc ;
 scalar_t__ ngx_hash_keys_array_init (TYPE_11__*,int ) ;
 scalar_t__ ngx_hash_wildcard_init (TYPE_12__*,int ,scalar_t__) ;
 int ngx_http_cmp_dns_wildcards ;
 int ngx_log_error (int ,int ,int ,char*,int *,int *) ;
 int ngx_memzero (TYPE_11__*,int) ;
 TYPE_7__* ngx_palloc (int ,size_t) ;
 int ngx_qsort (int ,size_t,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_server_names(ngx_conf_t *cf, ngx_http_core_main_conf_t *cmcf,
    ngx_http_conf_addr_t *addr)
{
    ngx_int_t rc;
    ngx_uint_t n, s;
    ngx_hash_init_t hash;
    ngx_hash_keys_arrays_t ha;
    ngx_http_server_name_t *name;
    ngx_http_core_srv_conf_t **cscfp;






    ngx_memzero(&ha, sizeof(ngx_hash_keys_arrays_t));

    ha.temp_pool = ngx_create_pool(NGX_DEFAULT_POOL_SIZE, cf->log);
    if (ha.temp_pool == ((void*)0)) {
        return NGX_ERROR;
    }

    ha.pool = cf->pool;

    if (ngx_hash_keys_array_init(&ha, NGX_HASH_LARGE) != NGX_OK) {
        goto failed;
    }

    cscfp = addr->servers.elts;

    for (s = 0; s < addr->servers.nelts; s++) {

        name = cscfp[s]->server_names.elts;

        for (n = 0; n < cscfp[s]->server_names.nelts; n++) {
            rc = ngx_hash_add_key(&ha, &name[n].name, name[n].server,
                                  NGX_HASH_WILDCARD_KEY);

            if (rc == NGX_ERROR) {
                return NGX_ERROR;
            }

            if (rc == NGX_DECLINED) {
                ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                              "invalid server name or wildcard \"%V\" on %V",
                              &name[n].name, &addr->opt.addr_text);
                return NGX_ERROR;
            }

            if (rc == NGX_BUSY) {
                ngx_log_error(NGX_LOG_WARN, cf->log, 0,
                              "conflicting server name \"%V\" on %V, ignored",
                              &name[n].name, &addr->opt.addr_text);
            }
        }
    }

    hash.key = ngx_hash_key_lc;
    hash.max_size = cmcf->server_names_hash_max_size;
    hash.bucket_size = cmcf->server_names_hash_bucket_size;
    hash.name = "server_names_hash";
    hash.pool = cf->pool;

    if (ha.keys.nelts) {
        hash.hash = &addr->hash;
        hash.temp_pool = ((void*)0);

        if (ngx_hash_init(&hash, ha.keys.elts, ha.keys.nelts) != NGX_OK) {
            goto failed;
        }
    }

    if (ha.dns_wc_head.nelts) {

        ngx_qsort(ha.dns_wc_head.elts, (size_t) ha.dns_wc_head.nelts,
                  sizeof(ngx_hash_key_t), ngx_http_cmp_dns_wildcards);

        hash.hash = ((void*)0);
        hash.temp_pool = ha.temp_pool;

        if (ngx_hash_wildcard_init(&hash, ha.dns_wc_head.elts,
                                   ha.dns_wc_head.nelts)
            != NGX_OK)
        {
            goto failed;
        }

        addr->wc_head = (ngx_hash_wildcard_t *) hash.hash;
    }

    if (ha.dns_wc_tail.nelts) {

        ngx_qsort(ha.dns_wc_tail.elts, (size_t) ha.dns_wc_tail.nelts,
                  sizeof(ngx_hash_key_t), ngx_http_cmp_dns_wildcards);

        hash.hash = ((void*)0);
        hash.temp_pool = ha.temp_pool;

        if (ngx_hash_wildcard_init(&hash, ha.dns_wc_tail.elts,
                                   ha.dns_wc_tail.nelts)
            != NGX_OK)
        {
            goto failed;
        }

        addr->wc_tail = (ngx_hash_wildcard_t *) hash.hash;
    }

    ngx_destroy_pool(ha.temp_pool);
    return NGX_OK;

failed:

    ngx_destroy_pool(ha.temp_pool);

    return NGX_ERROR;
}
