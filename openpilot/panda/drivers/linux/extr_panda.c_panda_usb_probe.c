
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int bitrate; } ;
struct TYPE_4__ {TYPE_1__ bittiming; int state; } ;
struct panda_inf_priv {int interface_num; struct net_device* netdev; TYPE_2__ can; int tx_submitted; int mcu_can_ifnum; struct panda_dev_priv* priv_dev; } ;
struct panda_dev_priv {struct panda_inf_priv** interfaces; int rx_submitted; int * dev; struct usb_device* udev; } ;
struct net_device {int flags; int * netdev_ops; } ;


 int CAN_STATE_STOPPED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_ECHO ;
 int PANDA_BITRATE ;
 int PANDA_MAX_TX_URBS ;
 int PANDA_NUM_CAN_INTERFACES ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_candev (int,int ) ;
 int * can_numbering ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int free_candev (struct net_device*) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct panda_dev_priv*) ;
 struct panda_dev_priv* kzalloc (int,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct panda_inf_priv* netdev_priv (struct net_device*) ;
 int panda_netdev_ops ;
 int panda_set_output_enable (struct panda_inf_priv*,int) ;
 int panda_usb_start (struct panda_dev_priv*) ;
 int register_candev (struct net_device*) ;
 int unregister_candev (struct net_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct panda_dev_priv*) ;

__attribute__((used)) static int panda_usb_probe(struct usb_interface *intf,
      const struct usb_device_id *id)
{
  struct net_device *netdev;
  struct panda_inf_priv *priv_inf;
  int err = -ENOMEM;
  int inf_num;
  struct panda_dev_priv *priv_dev;
  struct usb_device *usbdev = interface_to_usbdev(intf);

  priv_dev = kzalloc(sizeof(struct panda_dev_priv), GFP_KERNEL);
  if (!priv_dev) {
    dev_err(&intf->dev, "Couldn't alloc priv_dev\n");
    return -ENOMEM;
  }
  priv_dev->udev = usbdev;
  priv_dev->dev = &intf->dev;
  usb_set_intfdata(intf, priv_dev);


  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    netdev = alloc_candev(sizeof(struct panda_inf_priv), PANDA_MAX_TX_URBS);
    if (!netdev) {
      dev_err(&intf->dev, "Couldn't alloc candev\n");
      goto cleanup_candev;
    }
    netdev->netdev_ops = &panda_netdev_ops;
    netdev->flags |= IFF_ECHO;

    priv_inf = netdev_priv(netdev);
    priv_inf->netdev = netdev;
    priv_inf->priv_dev = priv_dev;
    priv_inf->interface_num = inf_num;
    priv_inf->mcu_can_ifnum = can_numbering[inf_num];

    init_usb_anchor(&priv_dev->rx_submitted);
    init_usb_anchor(&priv_inf->tx_submitted);


    priv_inf->can.state = CAN_STATE_STOPPED;
    priv_inf->can.bittiming.bitrate = PANDA_BITRATE;

    SET_NETDEV_DEV(netdev, &intf->dev);

    err = register_candev(netdev);
    if (err) {
      netdev_err(netdev, "couldn't register PANDA CAN device: %d\n", err);
      free_candev(priv_inf->netdev);
      goto cleanup_candev;
    }

    priv_dev->interfaces[inf_num] = priv_inf;
  }

  err = panda_usb_start(priv_dev);
  if (err) {
    dev_err(&intf->dev, "Failed to initialize Comma.ai Panda CAN controller\n");
    goto cleanup_candev;
  }

  err = panda_set_output_enable(priv_inf, 1);
  if (err) {
    dev_info(&intf->dev, "Failed to initialize send enable message to Panda.\n");
    goto cleanup_candev;
  }

  dev_info(&intf->dev, "Comma.ai Panda CAN controller connected\n");

  return 0;

 cleanup_candev:
  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    priv_inf = priv_dev->interfaces[inf_num];
    if(priv_inf){
      unregister_candev(priv_inf->netdev);
      free_candev(priv_inf->netdev);
    }else
      break;
  }

  kfree(priv_dev);

  return err;
}
