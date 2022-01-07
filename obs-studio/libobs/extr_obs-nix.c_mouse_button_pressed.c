
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int response_type; int mask; } ;
typedef TYPE_1__ xcb_query_pointer_reply_t ;
typedef int xcb_query_pointer_cookie_t ;
struct TYPE_15__ {int detail; } ;
typedef TYPE_2__ xcb_input_raw_button_release_event_t ;
struct TYPE_16__ {int detail; } ;
typedef TYPE_3__ xcb_input_raw_button_press_event_t ;
typedef TYPE_1__ xcb_generic_event_t ;
typedef TYPE_1__ xcb_generic_error_t ;
struct TYPE_17__ {int event_type; } ;
typedef TYPE_6__ xcb_ge_event_t ;
typedef int xcb_connection_t ;
typedef int uint16_t ;
typedef int obs_key_t ;
struct TYPE_18__ {int* pressed; int* update; int* button_pressed; } ;
typedef TYPE_7__ obs_hotkeys_platform_t ;


 int LOG_WARNING ;
 int XCB_BUTTON_MASK_1 ;
 int XCB_BUTTON_MASK_2 ;
 int XCB_BUTTON_MASK_3 ;
 int XCB_GE_GENERIC ;


 int XINPUT_MOUSE_LEN ;
 int blog (int ,char*) ;
 int free (TYPE_1__*) ;
 int memset (int*,int ,int) ;
 int root_window (TYPE_7__*,int *) ;
 TYPE_1__* xcb_poll_for_event (int *) ;
 int xcb_query_pointer (int *,int ) ;
 TYPE_1__* xcb_query_pointer_reply (int *,int ,TYPE_1__**) ;

__attribute__((used)) static bool mouse_button_pressed(xcb_connection_t *connection,
     obs_hotkeys_platform_t *context, obs_key_t key)
{
 bool ret = 0;
 xcb_generic_error_t *error = ((void*)0);
 xcb_query_pointer_cookie_t qpc;
 xcb_query_pointer_reply_t *reply;

 qpc = xcb_query_pointer(connection, root_window(context, connection));
 reply = xcb_query_pointer_reply(connection, qpc, &error);

 if (error) {
  blog(LOG_WARNING, "xcb_query_pointer_reply failed");
 } else {
  uint16_t buttons = reply->mask;

  switch (key) {
  case 158:
   ret = buttons & XCB_BUTTON_MASK_1;
   break;
  case 147:
   ret = buttons & XCB_BUTTON_MASK_3;
   break;
  case 136:
   ret = buttons & XCB_BUTTON_MASK_2;
   break;
  default:;
  }
 }

 free(reply);
 free(error);

 return ret;
}
