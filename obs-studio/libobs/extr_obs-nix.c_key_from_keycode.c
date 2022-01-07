
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xcb_keycode_t ;
struct TYPE_4__ {size_t num; scalar_t__* array; } ;
struct keycode_list {TYPE_1__ list; } ;
typedef int obs_key_t ;
struct TYPE_5__ {struct keycode_list* keycodes; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;


 size_t OBS_KEY_LAST_VALUE ;
 int OBS_KEY_NONE ;

__attribute__((used)) static obs_key_t key_from_keycode(obs_hotkeys_platform_t *context,
      xcb_keycode_t code)
{
 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++) {
  struct keycode_list *codes = &context->keycodes[i];

  for (size_t j = 0; j < codes->list.num; j++) {
   if (codes->list.array[j] == code) {
    return (obs_key_t)i;
   }
  }
 }

 return OBS_KEY_NONE;
}
