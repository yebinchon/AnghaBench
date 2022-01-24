#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitrate; } ;
struct TYPE_4__ {TYPE_1__ bittiming; int /*<<< orphan*/  state; } ;
struct panda_inf_priv {int interface_num; struct net_device* netdev; TYPE_2__ can; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  mcu_can_ifnum; struct panda_dev_priv* priv_dev; } ;
struct panda_dev_priv {struct panda_inf_priv** interfaces; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/ * dev; struct usb_device* udev; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  PANDA_BITRATE ; 
 int /*<<< orphan*/  PANDA_MAX_TX_URBS ; 
 int PANDA_NUM_CAN_INTERFACES ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * can_numbering ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct panda_dev_priv*) ; 
 struct panda_dev_priv* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int) ; 
 struct panda_inf_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  panda_netdev_ops ; 
 int FUNC11 (struct panda_inf_priv*,int) ; 
 int FUNC12 (struct panda_dev_priv*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct panda_dev_priv*) ; 

__attribute__((used)) static int FUNC16(struct usb_interface *intf,
			   const struct usb_device_id *id)
{
  struct net_device *netdev;
  struct panda_inf_priv *priv_inf;
  int err = -ENOMEM;
  int inf_num;
  struct panda_dev_priv *priv_dev;
  struct usb_device *usbdev = FUNC6(intf);

  priv_dev = FUNC8(sizeof(struct panda_dev_priv), GFP_KERNEL);
  if (!priv_dev) {
    FUNC2(&intf->dev, "Couldn't alloc priv_dev\n");
    return -ENOMEM;
  }
  priv_dev->udev = usbdev;
  priv_dev->dev = &intf->dev;
  FUNC15(intf, priv_dev);

  ////// Interface privs
  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    netdev = FUNC1(sizeof(struct panda_inf_priv), PANDA_MAX_TX_URBS);
    if (!netdev) {
      FUNC2(&intf->dev, "Couldn't alloc candev\n");
      goto cleanup_candev;
    }
    netdev->netdev_ops = &panda_netdev_ops;
    netdev->flags |= IFF_ECHO; /* we support local echo */

    priv_inf = FUNC10(netdev);
    priv_inf->netdev = netdev;
    priv_inf->priv_dev = priv_dev;
    priv_inf->interface_num = inf_num;
    priv_inf->mcu_can_ifnum = can_numbering[inf_num];

    FUNC5(&priv_dev->rx_submitted);
    FUNC5(&priv_inf->tx_submitted);

    /* Init CAN device */
    priv_inf->can.state = CAN_STATE_STOPPED;
    priv_inf->can.bittiming.bitrate = PANDA_BITRATE;

    FUNC0(netdev, &intf->dev);

    err = FUNC13(netdev);
    if (err) {
      FUNC9(netdev, "couldn't register PANDA CAN device: %d\n", err);
      FUNC4(priv_inf->netdev);
      goto cleanup_candev;
    }

    priv_dev->interfaces[inf_num] = priv_inf;
  }

  err = FUNC12(priv_dev);
  if (err) {
    FUNC2(&intf->dev, "Failed to initialize Comma.ai Panda CAN controller\n");
    goto cleanup_candev;
  }

  err = FUNC11(priv_inf, true);
  if (err) {
    FUNC3(&intf->dev, "Failed to initialize send enable message to Panda.\n");
    goto cleanup_candev;
  }

  FUNC3(&intf->dev, "Comma.ai Panda CAN controller connected\n");

  return 0;

 cleanup_candev:
  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    priv_inf = priv_dev->interfaces[inf_num];
    if(priv_inf){
      FUNC14(priv_inf->netdev);
      FUNC4(priv_inf->netdev);
    }else
      break;
  }

  FUNC7(priv_dev);

  return err;
}