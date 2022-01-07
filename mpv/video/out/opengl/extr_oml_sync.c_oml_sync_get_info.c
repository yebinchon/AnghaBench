
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_vsync_info {int last_queue_display_time; int skipped_vsyncs; int vsync_duration; } ;
struct oml_sync {int last_queue_display_time; int last_skipped_vsyncs; int vsync_duration; int state_ok; } ;


 int oml_sync_reset (struct oml_sync*) ;

void oml_sync_get_info(struct oml_sync *oml, struct vo_vsync_info *info)
{
    if (!oml->state_ok)
        oml_sync_reset(oml);
    info->vsync_duration = oml->vsync_duration;
    info->skipped_vsyncs = oml->last_skipped_vsyncs;
    info->last_queue_display_time = oml->last_queue_display_time;
}
