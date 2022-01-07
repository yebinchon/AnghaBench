
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double video_fps; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__* obs ;

double obs_get_active_fps(void)
{
 return obs ? obs->video.video_fps : 0.0;
}
