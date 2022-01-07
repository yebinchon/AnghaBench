
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_flags; } ;
struct obs_source {TYPE_1__ info; } ;


 int OBS_SOURCE_ASYNC_VIDEO ;

__attribute__((used)) static inline bool is_async_video_source(const struct obs_source *source)
{
 return (source->info.output_flags & OBS_SOURCE_ASYNC_VIDEO) ==
        OBS_SOURCE_ASYNC_VIDEO;
}
