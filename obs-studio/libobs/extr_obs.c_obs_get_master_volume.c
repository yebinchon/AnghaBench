
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float user_volume; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;


 TYPE_2__* obs ;

float obs_get_master_volume(void)
{
 return obs ? obs->audio.user_volume : 0.0f;
}
