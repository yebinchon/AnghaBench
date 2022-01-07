
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* monitoring_device_name; char* monitoring_device_id; } ;
struct TYPE_4__ {TYPE_1__ audio; } ;


 TYPE_2__* obs ;

void obs_get_audio_monitoring_device(const char **name, const char **id)
{
 if (!obs)
  return;

 if (name)
  *name = obs->audio.monitoring_device_name;
 if (id)
  *id = obs->audio.monitoring_device_id;
}
