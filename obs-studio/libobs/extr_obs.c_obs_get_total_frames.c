
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int total_frames; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__* obs ;

uint32_t obs_get_total_frames(void)
{
 return obs ? obs->video.total_frames : 0;
}
