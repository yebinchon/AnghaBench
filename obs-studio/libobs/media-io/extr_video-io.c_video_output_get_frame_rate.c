
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fps_den; scalar_t__ fps_num; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ video_t ;



double video_output_get_frame_rate(const video_t *video)
{
 if (!video)
  return 0.0;

 return (double)video->info.fps_num / (double)video->info.fps_den;
}
