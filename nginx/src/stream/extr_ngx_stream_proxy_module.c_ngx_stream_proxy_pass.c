
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int no_resolve; int url; TYPE_5__* complex_value; int * value; TYPE_7__* cf; } ;
typedef TYPE_2__ ngx_url_t ;
struct TYPE_18__ {int * upstream; TYPE_5__* upstream_value; } ;
typedef TYPE_3__ ngx_stream_proxy_srv_conf_t ;
struct TYPE_19__ {int handler; } ;
typedef TYPE_4__ ngx_stream_core_srv_conf_t ;
struct TYPE_20__ {scalar_t__ lengths; } ;
typedef TYPE_5__ ngx_stream_complex_value_t ;
typedef TYPE_2__ ngx_stream_compile_complex_value_t ;
typedef int ngx_str_t ;
struct TYPE_21__ {int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_16__ {int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_memzero (TYPE_2__*,int) ;
 TYPE_5__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_stream_compile_complex_value (TYPE_2__*) ;
 TYPE_4__* ngx_stream_conf_get_module_srv_conf (TYPE_7__*,int ) ;
 int ngx_stream_core_module ;
 int ngx_stream_proxy_handler ;
 int * ngx_stream_upstream_add (TYPE_7__*,TYPE_2__*,int ) ;

__attribute__((used)) static char *
ngx_stream_proxy_pass(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_proxy_srv_conf_t *pscf = conf;

    ngx_url_t u;
    ngx_str_t *value, *url;
    ngx_stream_complex_value_t cv;
    ngx_stream_core_srv_conf_t *cscf;
    ngx_stream_compile_complex_value_t ccv;

    if (pscf->upstream || pscf->upstream_value) {
        return "is duplicate";
    }

    cscf = ngx_stream_conf_get_module_srv_conf(cf, ngx_stream_core_module);

    cscf->handler = ngx_stream_proxy_handler;

    value = cf->args->elts;

    url = &value[1];

    ngx_memzero(&ccv, sizeof(ngx_stream_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = url;
    ccv.complex_value = &cv;

    if (ngx_stream_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (cv.lengths) {
        pscf->upstream_value = ngx_palloc(cf->pool,
                                          sizeof(ngx_stream_complex_value_t));
        if (pscf->upstream_value == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        *pscf->upstream_value = cv;

        return NGX_CONF_OK;
    }

    ngx_memzero(&u, sizeof(ngx_url_t));

    u.url = *url;
    u.no_resolve = 1;

    pscf->upstream = ngx_stream_upstream_add(cf, &u, 0);
    if (pscf->upstream == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
