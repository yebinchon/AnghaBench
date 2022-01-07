
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_query_keymap_reply_t ;
typedef int xcb_generic_error_t ;
typedef int xcb_connection_t ;
struct TYPE_4__ {size_t num; int * array; } ;
struct keycode_list {TYPE_1__ list; } ;
typedef size_t obs_key_t ;
struct TYPE_5__ {int super_r_code; int super_l_code; struct keycode_list* keycodes; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;


 int LOG_WARNING ;
 size_t OBS_KEY_META ;
 int blog (int ,char*) ;
 int free (int *) ;
 scalar_t__ keycode_pressed (int *,int ) ;
 int xcb_query_keymap (int *) ;
 int * xcb_query_keymap_reply (int *,int ,int **) ;

__attribute__((used)) static bool key_pressed(xcb_connection_t *connection,
   obs_hotkeys_platform_t *context, obs_key_t key)
{
 struct keycode_list *codes = &context->keycodes[key];
 xcb_generic_error_t *error = ((void*)0);
 xcb_query_keymap_reply_t *reply;
 bool pressed = 0;

 reply = xcb_query_keymap_reply(connection, xcb_query_keymap(connection),
           &error);
 if (error) {
  blog(LOG_WARNING, "xcb_query_keymap failed");

 } else if (key == OBS_KEY_META) {
  pressed = keycode_pressed(reply, context->super_l_code) ||
     keycode_pressed(reply, context->super_r_code);

 } else {
  for (size_t i = 0; i < codes->list.num; i++) {
   if (keycode_pressed(reply, codes->list.array[i])) {
    pressed = 1;
    break;
   }
  }
 }

 free(reply);
 free(error);
 return pressed;
}
