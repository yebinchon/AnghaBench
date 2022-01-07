
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


typedef int ngx_uint_t ;
typedef size_t ngx_int_t ;
struct TYPE_13__ {int next; int handler; int checker; } ;
typedef TYPE_4__ ngx_http_phase_handler_t ;
typedef int ngx_http_phase_handler_pt ;
typedef int ngx_http_handler_pt ;
struct TYPE_10__ {int server_rewrite_index; int location_rewrite_index; TYPE_4__* handlers; } ;
struct TYPE_14__ {TYPE_3__* phases; TYPE_1__ phase_engine; } ;
typedef TYPE_5__ ngx_http_core_main_conf_t ;
struct TYPE_15__ {int pool; } ;
typedef TYPE_6__ ngx_conf_t ;
struct TYPE_11__ {size_t nelts; int * elts; } ;
struct TYPE_12__ {TYPE_2__ handlers; } ;


 size_t NGX_ERROR ;



 int NGX_HTTP_LOG_PHASE ;




 size_t NGX_OK ;
 int ngx_http_core_access_phase ;
 int ngx_http_core_content_phase ;
 int ngx_http_core_find_config_phase ;
 int ngx_http_core_generic_phase ;
 int ngx_http_core_post_access_phase ;
 int ngx_http_core_post_rewrite_phase ;
 int ngx_http_core_rewrite_phase ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_init_phase_handlers(ngx_conf_t *cf, ngx_http_core_main_conf_t *cmcf)
{
    ngx_int_t j;
    ngx_uint_t i, n;
    ngx_uint_t find_config_index, use_rewrite, use_access;
    ngx_http_handler_pt *h;
    ngx_http_phase_handler_t *ph;
    ngx_http_phase_handler_pt checker;

    cmcf->phase_engine.server_rewrite_index = (ngx_uint_t) -1;
    cmcf->phase_engine.location_rewrite_index = (ngx_uint_t) -1;
    find_config_index = 0;
    use_rewrite = cmcf->phases[129].handlers.nelts ? 1 : 0;
    use_access = cmcf->phases[134].handlers.nelts ? 1 : 0;

    n = 1
        + use_rewrite
        + use_access;

    for (i = 0; i < NGX_HTTP_LOG_PHASE; i++) {
        n += cmcf->phases[i].handlers.nelts;
    }

    ph = ngx_pcalloc(cf->pool,
                     n * sizeof(ngx_http_phase_handler_t) + sizeof(void *));
    if (ph == ((void*)0)) {
        return NGX_ERROR;
    }

    cmcf->phase_engine.handlers = ph;
    n = 0;

    for (i = 0; i < NGX_HTTP_LOG_PHASE; i++) {
        h = cmcf->phases[i].handlers.elts;

        switch (i) {

        case 128:
            if (cmcf->phase_engine.server_rewrite_index == (ngx_uint_t) -1) {
                cmcf->phase_engine.server_rewrite_index = n;
            }
            checker = ngx_http_core_rewrite_phase;

            break;

        case 132:
            find_config_index = n;

            ph->checker = ngx_http_core_find_config_phase;
            n++;
            ph++;

            continue;

        case 129:
            if (cmcf->phase_engine.location_rewrite_index == (ngx_uint_t) -1) {
                cmcf->phase_engine.location_rewrite_index = n;
            }
            checker = ngx_http_core_rewrite_phase;

            break;

        case 130:
            if (use_rewrite) {
                ph->checker = ngx_http_core_post_rewrite_phase;
                ph->next = find_config_index;
                n++;
                ph++;
            }

            continue;

        case 134:
            checker = ngx_http_core_access_phase;
            n++;
            break;

        case 131:
            if (use_access) {
                ph->checker = ngx_http_core_post_access_phase;
                ph->next = n;
                ph++;
            }

            continue;

        case 133:
            checker = ngx_http_core_content_phase;
            break;

        default:
            checker = ngx_http_core_generic_phase;
        }

        n += cmcf->phases[i].handlers.nelts;

        for (j = cmcf->phases[i].handlers.nelts - 1; j >= 0; j--) {
            ph->checker = checker;
            ph->handler = h[j];
            ph->next = n;
            ph++;
        }
    }

    return NGX_OK;
}
