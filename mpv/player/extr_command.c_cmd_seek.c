
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {int success; scalar_t__ seek_msg_osd; scalar_t__ seek_bar_osd; TYPE_3__* args; TYPE_1__* cmd; struct MPContext* mpctx; } ;
struct MPContext {int add_osd_seek_info; int playback_initialized; } ;
typedef enum seek_precision { ____Placeholder_seek_precision } seek_precision ;
struct TYPE_5__ {double d; int i; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {double scale; } ;


 double MPMAX (int ,double) ;
 int MPSEEK_ABSOLUTE ;
 int MPSEEK_DEFAULT ;
 int MPSEEK_EXACT ;
 int MPSEEK_FACTOR ;
 int MPSEEK_FLAG_DELAY ;
 int MPSEEK_KEYFRAME ;
 int MPSEEK_RELATIVE ;
 int OSD_FFW ;
 int OSD_REW ;
 int OSD_SEEK_INFO_BAR ;
 int OSD_SEEK_INFO_TEXT ;
 double get_current_pos_ratio (struct MPContext*,int) ;
 double get_current_time (struct MPContext*) ;
 double get_time_length (struct MPContext*) ;
 int mark_seek (struct MPContext*) ;
 int queue_seek (struct MPContext*,int ,double,int,int ) ;
 int set_osd_function (struct MPContext*,int ) ;

__attribute__((used)) static void cmd_seek(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    double v = cmd->args[0].v.d * cmd->cmd->scale;
    int abs = cmd->args[1].v.i & 3;
    enum seek_precision precision = MPSEEK_DEFAULT;
    switch (((cmd->args[2].v.i | cmd->args[1].v.i) >> 3) & 3) {
    case 1: precision = MPSEEK_KEYFRAME; break;
    case 2: precision = MPSEEK_EXACT; break;
    }
    if (!mpctx->playback_initialized) {
        cmd->success = 0;
        return;
    }

    mark_seek(mpctx);
    switch (abs) {
    case 0: {
        queue_seek(mpctx, MPSEEK_RELATIVE, v, precision, MPSEEK_FLAG_DELAY);
        set_osd_function(mpctx, (v > 0) ? OSD_FFW : OSD_REW);
        break;
    }
    case 1: {
        double ratio = v / 100.0;
        double cur_pos = get_current_pos_ratio(mpctx, 0);
        queue_seek(mpctx, MPSEEK_FACTOR, ratio, precision, MPSEEK_FLAG_DELAY);
        set_osd_function(mpctx, cur_pos < ratio ? OSD_FFW : OSD_REW);
        break;
    }
    case 2: {
        if (v < 0) {

            double len = get_time_length(mpctx);
            if (len < 0) {
                cmd->success = 0;
                return;
            }
            v = MPMAX(0, len + v);
        }
        queue_seek(mpctx, MPSEEK_ABSOLUTE, v, precision, MPSEEK_FLAG_DELAY);
        set_osd_function(mpctx,
                         v > get_current_time(mpctx) ? OSD_FFW : OSD_REW);
        break;
    }
    case 3: {
        queue_seek(mpctx, MPSEEK_FACTOR,
                   get_current_pos_ratio(mpctx, 0) + v / 100.0,
                   precision, MPSEEK_FLAG_DELAY);
        set_osd_function(mpctx, v > 0 ? OSD_FFW : OSD_REW);
        break;
    }}
    if (cmd->seek_bar_osd)
        mpctx->add_osd_seek_info |= OSD_SEEK_INFO_BAR;
    if (cmd->seek_msg_osd)
        mpctx->add_osd_seek_info |= OSD_SEEK_INFO_TEXT;
}
