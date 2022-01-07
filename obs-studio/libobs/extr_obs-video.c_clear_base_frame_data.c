
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_core_video {int texture_rendered; int texture_converted; scalar_t__ cur_texture; int vframe_info_buffer; } ;
struct TYPE_2__ {struct obs_core_video video; } ;


 int circlebuf_free (int *) ;
 TYPE_1__* obs ;

__attribute__((used)) static void clear_base_frame_data(void)
{
 struct obs_core_video *video = &obs->video;
 video->texture_rendered = 0;
 video->texture_converted = 0;
 circlebuf_free(&video->vframe_info_buffer);
 video->cur_texture = 0;
}
