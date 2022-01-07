
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_stream_handler_pt ;
struct TYPE_7__ {TYPE_1__* phases; } ;
typedef TYPE_2__ ngx_stream_core_main_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_6__ {int handlers; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 size_t NGX_STREAM_ACCESS_PHASE ;
 size_t NGX_STREAM_LOG_PHASE ;
 size_t NGX_STREAM_POST_ACCEPT_PHASE ;
 size_t NGX_STREAM_PREACCESS_PHASE ;
 size_t NGX_STREAM_PREREAD_PHASE ;
 size_t NGX_STREAM_SSL_PHASE ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;

__attribute__((used)) static ngx_int_t
ngx_stream_init_phases(ngx_conf_t *cf, ngx_stream_core_main_conf_t *cmcf)
{
    if (ngx_array_init(&cmcf->phases[NGX_STREAM_POST_ACCEPT_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->phases[NGX_STREAM_PREACCESS_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->phases[NGX_STREAM_ACCESS_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->phases[NGX_STREAM_SSL_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->phases[NGX_STREAM_PREREAD_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_array_init(&cmcf->phases[NGX_STREAM_LOG_PHASE].handlers,
                       cf->pool, 1, sizeof(ngx_stream_handler_pt))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    return NGX_OK;
}
