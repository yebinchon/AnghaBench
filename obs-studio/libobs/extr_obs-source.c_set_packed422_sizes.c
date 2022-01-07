
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {int width; int height; } ;
struct obs_source {int* async_convert_width; int async_channel_count; int * async_texture_formats; int * async_convert_height; } ;


 int GS_BGRA ;

__attribute__((used)) static inline bool set_packed422_sizes(struct obs_source *source,
           const struct obs_source_frame *frame)
{
 source->async_convert_width[0] = frame->width / 2;
 source->async_convert_height[0] = frame->height;
 source->async_texture_formats[0] = GS_BGRA;
 source->async_channel_count = 1;
 return 1;
}
