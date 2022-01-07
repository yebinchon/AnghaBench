
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct panda_usb_ctx {int dummy; } ;
struct panda_usb_can_msg {int dummy; } ;
struct panda_inf_priv {int netdev; TYPE_1__* priv_dev; int tx_submitted; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int udev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PANDA_USB_TX_BUFF_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int memcpy (int *,struct panda_usb_can_msg*,int ) ;
 int netdev_warn (int ,char*,int) ;
 int netif_device_detach (int ) ;
 int panda_usb_write_bulk_callback ;
 scalar_t__ unlikely (int) ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct panda_usb_ctx*) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static netdev_tx_t panda_usb_xmit(struct panda_inf_priv *priv,
      struct panda_usb_can_msg *usb_msg,
      struct panda_usb_ctx *ctx)
{
  struct urb *urb;
  u8 *buf;
  int err;


  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
    return -ENOMEM;

  buf = usb_alloc_coherent(priv->priv_dev->udev,
      PANDA_USB_TX_BUFF_SIZE, GFP_ATOMIC,
      &urb->transfer_dma);
  if (!buf) {
    err = -ENOMEM;
    goto nomembuf;
  }

  memcpy(buf, usb_msg, PANDA_USB_TX_BUFF_SIZE);

  usb_fill_bulk_urb(urb, priv->priv_dev->udev,
      usb_sndbulkpipe(priv->priv_dev->udev, 3), buf,
      PANDA_USB_TX_BUFF_SIZE, panda_usb_write_bulk_callback,
      ctx);

  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &priv->tx_submitted);

  err = usb_submit_urb(urb, GFP_ATOMIC);
  if (unlikely(err))
    goto failed;


  usb_free_urb(urb);

  return 0;

 failed:
  usb_unanchor_urb(urb);
  usb_free_coherent(priv->priv_dev->udev, PANDA_USB_TX_BUFF_SIZE, buf, urb->transfer_dma);

  if (err == -ENODEV)
    netif_device_detach(priv->netdev);
  else
    netdev_warn(priv->netdev, "failed tx_urb %d\n", err);

 nomembuf:
  usb_free_urb(urb);

  return err;
}
