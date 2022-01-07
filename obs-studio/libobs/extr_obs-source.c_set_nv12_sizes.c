
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int width; int height; } ;
struct obs_source {int* async_convert_width; int* async_convert_height; int async_channel_count; int * async_texture_formats; } ;


 int GS_R8 ;
 int GS_R8G8 ;

__attribute__((used)) static inline bool set_nv12_sizes(struct obs_source *source,
      const struct obs_source_frame *frame)
{
 source->async_convert_width[0] = frame->width;
 source->async_convert_width[1] = frame->width / 2;
 source->async_convert_height[0] = frame->height;
 source->async_convert_height[1] = frame->height / 2;
 source->async_texture_formats[0] = GS_R8;
 source->async_texture_formats[1] = GS_R8G8;
 source->async_channel_count = 2;
 return 1;
}
