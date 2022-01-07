
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {TYPE_1__* opts; int log; } ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
struct TYPE_2__ {int osd_duration; } ;


 int MP_ON_OSD_MSG ;
 int edit_filters (struct MPContext*,int ,int,char const*,char const*) ;
 char** filter_opt ;
 int set_osd_msg (struct MPContext*,int,int ,char*) ;
 int show_property_osd (struct MPContext*,char const*,int ) ;

__attribute__((used)) static int edit_filters_osd(struct MPContext *mpctx, enum stream_type mediatype,
                            const char *cmd, const char *arg, bool on_osd)
{
    int r = edit_filters(mpctx, mpctx->log, mediatype, cmd, arg);
    if (on_osd) {
        if (r >= 0) {
            const char *prop = filter_opt[mediatype];
            show_property_osd(mpctx, prop, MP_ON_OSD_MSG);
        } else {
            set_osd_msg(mpctx, 1, mpctx->opts->osd_duration,
                         "Changing filters failed!");
        }
    }
    return r;
}
