
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source_frame {scalar_t__ width; scalar_t__ height; int full_range; int format; } ;
struct obs_source {scalar_t__ async_cache_width; scalar_t__ async_cache_height; int async_cache_full_range; int async_cache_format; } ;
typedef enum convert_type { ____Placeholder_convert_type } convert_type ;


 int get_convert_type (int ,int ) ;

__attribute__((used)) static inline bool async_texture_changed(struct obs_source *source,
      const struct obs_source_frame *frame)
{
 enum convert_type prev, cur;
 prev = get_convert_type(source->async_cache_format,
    source->async_cache_full_range);
 cur = get_convert_type(frame->format, frame->full_range);

 return source->async_cache_width != frame->width ||
        source->async_cache_height != frame->height || prev != cur;
}
