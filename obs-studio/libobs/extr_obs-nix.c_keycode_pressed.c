
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* keys; } ;
typedef TYPE_1__ xcb_query_keymap_reply_t ;
typedef int xcb_keycode_t ;



__attribute__((used)) static inline bool keycode_pressed(xcb_query_keymap_reply_t *reply,
       xcb_keycode_t code)
{
 return (reply->keys[code / 8] & (1 << (code % 8))) != 0;
}
