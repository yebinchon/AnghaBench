
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct panda_dev_priv {int dev; int udev; int rx_submitted; int * interfaces; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PANDA_NUM_CAN_INTERFACES ;
 int PANDA_USB_RX_BUFF_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int ,char*,...) ;
 int panda_init_ctx (int ) ;
 int panda_usb_read_int_callback ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int *,int ,int ,struct panda_dev_priv*,int) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_set_interface (int ,int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int panda_usb_start(struct panda_dev_priv *priv_dev)
{
  int err;
  struct urb *urb = ((void*)0);
  u8 *buf;
  int inf_num;

  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++)
    panda_init_ctx(priv_dev->interfaces[inf_num]);

  err = usb_set_interface(priv_dev->udev, 0, 1);
  if (err) {
    dev_err(priv_dev->dev, "Can not set alternate setting to 1, error: %i", err);
    return err;
  }


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
    return -ENOMEM;
  }

  buf = usb_alloc_coherent(priv_dev->udev, PANDA_USB_RX_BUFF_SIZE,
      GFP_KERNEL, &urb->transfer_dma);
  if (!buf) {
    dev_err(priv_dev->dev, "No memory left for USB buffer\n");
    usb_free_urb(urb);
    return -ENOMEM;
  }

  usb_fill_int_urb(urb, priv_dev->udev,
                   usb_rcvintpipe(priv_dev->udev, 1),
                   buf, PANDA_USB_RX_BUFF_SIZE,
                   panda_usb_read_int_callback, priv_dev, 5);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  usb_anchor_urb(urb, &priv_dev->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
  usb_unanchor_urb(urb);
    usb_free_coherent(priv_dev->udev, PANDA_USB_RX_BUFF_SIZE,
        buf, urb->transfer_dma);
    usb_free_urb(urb);
    dev_err(priv_dev->dev, "Failed in start, while submitting urb.\n");
    return err;
  }


  usb_free_urb(urb);


  return 0;
}
