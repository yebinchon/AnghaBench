
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oml_sync {int vsync_duration; int last_skipped_vsyncs; int last_queue_display_time; } ;



__attribute__((used)) static void oml_sync_reset(struct oml_sync *oml)
{
    oml->vsync_duration = -1;
    oml->last_skipped_vsyncs = -1;
    oml->last_queue_display_time = -1;
}
