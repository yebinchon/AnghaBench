
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ obs_key_t ;
struct TYPE_5__ {TYPE_1__* platform_context; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;
struct TYPE_4__ {int* vk_codes; } ;


 scalar_t__ OBS_KEY_META ;
 int VK_LWIN ;
 TYPE_3__* obs ;

int obs_key_to_virtual_key(obs_key_t key)
{
 if (key == OBS_KEY_META)
  return VK_LWIN;

 return obs->hotkeys.platform_context->vk_codes[(int)key];
}
