
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cache_size; int height; int width; int format; } ;
struct video_output {size_t available_frames; TYPE_1__ info; int * cache; } ;
struct video_frame {int dummy; } ;


 scalar_t__ MAX_CACHE_SIZE ;
 int video_frame_init (struct video_frame*,int ,int ,int ) ;

__attribute__((used)) static inline void init_cache(struct video_output *video)
{
 if (video->info.cache_size > MAX_CACHE_SIZE)
  video->info.cache_size = MAX_CACHE_SIZE;

 for (size_t i = 0; i < video->info.cache_size; i++) {
  struct video_frame *frame;
  frame = (struct video_frame *)&video->cache[i];

  video_frame_init(frame, video->info.format, video->info.width,
     video->info.height);
 }

 video->available_frames = video->info.cache_size;
}
