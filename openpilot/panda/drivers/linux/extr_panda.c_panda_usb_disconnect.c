
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct panda_inf_priv {int netdev; } ;
struct panda_dev_priv {struct panda_inf_priv** interfaces; } ;


 int PANDA_NUM_CAN_INTERFACES ;
 int free_candev (int ) ;
 int kfree (struct panda_dev_priv*) ;
 int netdev_info (int ,char*) ;
 int panda_urb_unlink (struct panda_inf_priv*) ;
 int unregister_candev (int ) ;
 struct panda_dev_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void panda_usb_disconnect(struct usb_interface *intf)
{
  struct panda_dev_priv *priv_dev = usb_get_intfdata(intf);
  struct panda_inf_priv *priv_inf;
  int inf_num;

  usb_set_intfdata(intf, ((void*)0));

  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    priv_inf = priv_dev->interfaces[inf_num];
    if(priv_inf){
      netdev_info(priv_inf->netdev, "device disconnected\n");
      unregister_candev(priv_inf->netdev);
      free_candev(priv_inf->netdev);
    }else
      break;
  }

  panda_urb_unlink(priv_inf);
  kfree(priv_dev);
}
