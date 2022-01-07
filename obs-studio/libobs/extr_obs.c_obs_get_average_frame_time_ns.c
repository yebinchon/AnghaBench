
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int video_avg_frame_time_ns; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__* obs ;

uint64_t obs_get_average_frame_time_ns(void)
{
 return obs ? obs->video.video_avg_frame_time_ns : 0;
}
