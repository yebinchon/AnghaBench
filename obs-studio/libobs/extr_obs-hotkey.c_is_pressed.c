
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_key_t ;
struct TYPE_3__ {int platform_context; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 TYPE_2__* obs ;
 int obs_hotkeys_platform_is_pressed (int ,int ) ;

__attribute__((used)) static inline bool is_pressed(obs_key_t key)
{
 return obs_hotkeys_platform_is_pressed(obs->hotkeys.platform_context,
            key);
}
