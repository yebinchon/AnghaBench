
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xcb_keycode_t ;
typedef int xcb_connection_t ;
struct dstr {int dummy; } ;
struct TYPE_7__ {int root; int window; scalar_t__ keycode; int display; int type; int member_0; } ;
typedef TYPE_2__ XKeyEvent ;
struct TYPE_6__ {TYPE_3__* platform_context; } ;
struct TYPE_9__ {TYPE_1__ hotkeys; } ;
struct TYPE_8__ {int display; } ;


 int KeyPress ;
 int * XGetXCBConnection (int ) ;
 int XLookupString (TYPE_2__*,char*,int,int *,int *) ;
 int dstr_ncopy (struct dstr*,char*,int) ;
 int dstr_to_upper (struct dstr*) ;
 TYPE_4__* obs ;
 int root_window (TYPE_3__*,int *) ;

__attribute__((used)) static bool get_key_translation(struct dstr *dstr, xcb_keycode_t keycode)
{
 xcb_connection_t *connection;
 char name[128];

 connection = XGetXCBConnection(obs->hotkeys.platform_context->display);

 XKeyEvent event = {0};
 event.type = KeyPress;
 event.display = obs->hotkeys.platform_context->display;
 event.keycode = keycode;
 event.root = root_window(obs->hotkeys.platform_context, connection);
 event.window = event.root;

 if (keycode) {
  int len = XLookupString(&event, name, 128, ((void*)0), ((void*)0));
  if (len) {
   dstr_ncopy(dstr, name, len);
   dstr_to_upper(dstr);
   return 1;
  }
 }

 return 0;
}
