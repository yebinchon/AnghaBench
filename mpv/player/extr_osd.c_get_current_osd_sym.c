
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int osd_function; scalar_t__ step_frames; scalar_t__ paused; TYPE_1__* opts; scalar_t__ paused_for_cache; } ;
struct TYPE_2__ {int pause; } ;


 int OSD_CLOCK ;
 int OSD_PAUSE ;
 int OSD_PLAY ;
 scalar_t__ is_busy (struct MPContext*) ;
 int osd_get_function_sym (char*,size_t,int) ;

void get_current_osd_sym(struct MPContext *mpctx, char *buf, size_t buf_size)
{
    int sym = mpctx->osd_function;
    if (!sym) {
        if (is_busy(mpctx) || (mpctx->paused_for_cache && !mpctx->opts->pause)) {
            sym = OSD_CLOCK;
        } else if (mpctx->paused || mpctx->step_frames) {
            sym = OSD_PAUSE;
        } else {
            sym = OSD_PLAY;
        }
    }
    osd_get_function_sym(buf, buf_size, sym);
}
