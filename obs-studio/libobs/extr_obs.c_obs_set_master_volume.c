
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct calldata {int member_0; } ;
struct TYPE_3__ {float user_volume; } ;
struct TYPE_4__ {TYPE_1__ audio; int signals; } ;


 scalar_t__ calldata_float (struct calldata*,char*) ;
 int calldata_free (struct calldata*) ;
 int calldata_set_float (struct calldata*,char*,float) ;
 TYPE_2__* obs ;
 int signal_handler_signal (int ,char*,struct calldata*) ;

void obs_set_master_volume(float volume)
{
 struct calldata data = {0};

 if (!obs)
  return;

 calldata_set_float(&data, "volume", volume);
 signal_handler_signal(obs->signals, "master_volume", &data);
 volume = (float)calldata_float(&data, "volume");
 calldata_free(&data);

 obs->audio.user_volume = volume;
}
