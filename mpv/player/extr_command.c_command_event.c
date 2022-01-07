
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_ctx {int is_idle; void* marked_pts; void* last_seek_pts; } ;
struct MPContext {struct command_ctx* command_ctx; } ;


 int MPV_EVENT_END_FILE ;
 int MPV_EVENT_FILE_LOADED ;
 int MPV_EVENT_IDLE ;
 int MPV_EVENT_START_FILE ;
 void* MP_NOPTS_VALUE ;
 int OSD_BAR_SEEK ;
 int set_osd_bar_chapters (struct MPContext*,int ) ;

__attribute__((used)) static void command_event(struct MPContext *mpctx, int event, void *arg)
{
    struct command_ctx *ctx = mpctx->command_ctx;

    if (event == MPV_EVENT_START_FILE) {
        ctx->last_seek_pts = MP_NOPTS_VALUE;
        ctx->marked_pts = MP_NOPTS_VALUE;
    }

    if (event == MPV_EVENT_IDLE)
        ctx->is_idle = 1;
    if (event == MPV_EVENT_START_FILE)
        ctx->is_idle = 0;
    if (event == MPV_EVENT_END_FILE || event == MPV_EVENT_FILE_LOADED) {

        set_osd_bar_chapters(mpctx, OSD_BAR_SEEK);
    }
}
