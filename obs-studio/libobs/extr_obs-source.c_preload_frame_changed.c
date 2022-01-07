
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obs_source_frame {scalar_t__ width; scalar_t__ height; scalar_t__ format; } ;
struct TYPE_5__ {TYPE_1__* async_preload_frame; } ;
typedef TYPE_2__ obs_source_t ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; } ;



__attribute__((used)) static inline bool preload_frame_changed(obs_source_t *source,
      const struct obs_source_frame *in)
{
 if (!source->async_preload_frame)
  return 1;

 return in->width != source->async_preload_frame->width ||
        in->height != source->async_preload_frame->height ||
        in->format != source->async_preload_frame->format;
}
