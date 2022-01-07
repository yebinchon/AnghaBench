
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_2__ {scalar_t__ timestamp; } ;
struct vlc_source {TYPE_1__ frame; int source; } ;


 int UNUSED_PARAMETER (void*) ;
 scalar_t__ libvlc_clock_ () ;
 int obs_source_output_video (int ,TYPE_1__*) ;
 scalar_t__ time_start ;

__attribute__((used)) static void vlcs_video_display(void *data, void *picture)
{
 struct vlc_source *c = data;
 c->frame.timestamp = (uint64_t)libvlc_clock_() * 1000ULL - time_start;
 obs_source_output_video(c->source, &c->frame);

 UNUSED_PARAMETER(picture);
}
