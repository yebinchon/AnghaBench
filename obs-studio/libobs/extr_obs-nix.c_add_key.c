
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_keycode_t ;
typedef size_t obs_key_t ;
struct TYPE_6__ {TYPE_1__* keycodes; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;
struct TYPE_7__ {int num; scalar_t__* array; } ;
struct TYPE_5__ {TYPE_3__ list; } ;


 int LOG_DEBUG ;
 int blog (int ,char*,int,int ,int) ;
 int da_push_back (TYPE_3__,int *) ;
 int obs_key_to_name (size_t) ;

__attribute__((used)) static inline void add_key(obs_hotkeys_platform_t *context, obs_key_t key,
      int code)
{
 xcb_keycode_t kc = (xcb_keycode_t)code;
 da_push_back(context->keycodes[key].list, &kc);

 if (context->keycodes[key].list.num > 1) {
  blog(LOG_DEBUG,
       "found alternate keycode %d for %s "
       "which already has keycode %d",
       code, obs_key_to_name(key),
       (int)context->keycodes[key].list.array[0]);
 }
}
