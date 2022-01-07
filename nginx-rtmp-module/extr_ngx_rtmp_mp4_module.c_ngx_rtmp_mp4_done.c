
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {scalar_t__ mmaped_size; int * mmaped; int extra; } ;
typedef TYPE_3__ ngx_rtmp_mp4_ctx_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_7__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_mp4_module ;
 scalar_t__ ngx_rtmp_mp4_munmap (int *,scalar_t__,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_done(ngx_rtmp_session_t *s, ngx_file_t *f)
{
    ngx_rtmp_mp4_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx == ((void*)0) || ctx->mmaped == ((void*)0)) {
        return NGX_OK;
    }

    if (ngx_rtmp_mp4_munmap(ctx->mmaped, ctx->mmaped_size, &ctx->extra)
        != NGX_OK)
    {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, ngx_errno,
                      "mp4: munmap failed");
        return NGX_ERROR;
    }

    ctx->mmaped = ((void*)0);
    ctx->mmaped_size = 0;

    return NGX_OK;
}
