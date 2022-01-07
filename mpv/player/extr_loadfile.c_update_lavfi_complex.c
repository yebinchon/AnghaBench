
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {scalar_t__ playback_initialized; } ;


 int MPSEEK_EXACT ;
 int issue_refresh_seek (struct MPContext*,int ) ;
 scalar_t__ reinit_complex_filters (struct MPContext*,int) ;

void update_lavfi_complex(struct MPContext *mpctx)
{
    if (mpctx->playback_initialized) {
        if (reinit_complex_filters(mpctx, 0) != 0)
            issue_refresh_seek(mpctx, MPSEEK_EXACT);
    }
}
