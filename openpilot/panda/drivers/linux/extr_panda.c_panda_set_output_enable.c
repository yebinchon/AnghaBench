
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panda_inf_priv {TYPE_1__* priv_dev; } ;
struct TYPE_2__ {int udev; } ;


 int SAFETY_ALLOUTPUT ;
 int SAFETY_NOOUTPUT ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int panda_set_output_enable(struct panda_inf_priv* priv, bool enable){
  return usb_control_msg(priv->priv_dev->udev,
    usb_sndctrlpipe(priv->priv_dev->udev, 0),
    0xDC, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    enable ? SAFETY_ALLOUTPUT : SAFETY_NOOUTPUT, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}
