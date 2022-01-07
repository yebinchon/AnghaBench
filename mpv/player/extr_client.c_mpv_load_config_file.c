
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_6__ {int mconfig; } ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int MPV_ERROR_OPTION_ERROR ;
 int lock_core (TYPE_2__*) ;
 int m_config_parse_config_file (int ,char const*,int *,int ) ;
 int unlock_core (TYPE_2__*) ;

int mpv_load_config_file(mpv_handle *ctx, const char *filename)
{
    lock_core(ctx);
    int r = m_config_parse_config_file(ctx->mpctx->mconfig, filename, ((void*)0), 0);
    unlock_core(ctx);
    if (r == 0)
        return MPV_ERROR_INVALID_PARAMETER;
    if (r < 0)
        return MPV_ERROR_OPTION_ERROR;
    return 0;
}
