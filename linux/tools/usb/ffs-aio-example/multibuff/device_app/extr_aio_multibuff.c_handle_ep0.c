
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bRequestType; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct usb_functionfs_event {int type; TYPE_2__ u; } ;
typedef int event ;





 int USB_DIR_IN ;
 int display_event (struct usb_functionfs_event*) ;
 int perror (char*) ;
 int read (int,struct usb_functionfs_event*,int) ;
 int write (int,int *,int ) ;

__attribute__((used)) static void handle_ep0(int ep0, bool *ready)
{
 int ret;
 struct usb_functionfs_event event;

 ret = read(ep0, &event, sizeof(event));
 if (!ret) {
  perror("unable to read event from ep0");
  return;
 }
 display_event(&event);
 switch (event.type) {
 case 128:
  if (event.u.setup.bRequestType & USB_DIR_IN)
   write(ep0, ((void*)0), 0);
  else
   read(ep0, ((void*)0), 0);
  break;

 case 129:
  *ready = 1;
  break;

 case 130:
  *ready = 0;
  break;

 default:
  break;
 }
}
