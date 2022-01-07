
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int vframe_info_buffer; int textures_copied; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int circlebuf_free (int *) ;
 int memset (int ,int ,int) ;
 TYPE_1__* obs ;

__attribute__((used)) static void clear_raw_frame_data(void)
{
 struct obs_core_video *video = &obs->video;
 memset(video->textures_copied, 0, sizeof(video->textures_copied));
 circlebuf_free(&video->vframe_info_buffer);
}
