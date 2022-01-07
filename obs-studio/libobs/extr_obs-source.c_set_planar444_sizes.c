
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int height; int width; } ;
struct obs_source {int async_channel_count; void** async_texture_formats; int * async_convert_height; int * async_convert_width; } ;


 void* GS_R8 ;

__attribute__((used)) static inline bool set_planar444_sizes(struct obs_source *source,
           const struct obs_source_frame *frame)
{
 source->async_convert_width[0] = frame->width;
 source->async_convert_width[1] = frame->width;
 source->async_convert_width[2] = frame->width;
 source->async_convert_height[0] = frame->height;
 source->async_convert_height[1] = frame->height;
 source->async_convert_height[2] = frame->height;
 source->async_texture_formats[0] = GS_R8;
 source->async_texture_formats[1] = GS_R8;
 source->async_texture_formats[2] = GS_R8;
 source->async_channel_count = 3;
 return 1;
}
