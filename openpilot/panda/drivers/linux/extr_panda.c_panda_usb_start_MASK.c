#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct panda_dev_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/ * interfaces; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PANDA_NUM_CAN_INTERFACES ; 
 int /*<<< orphan*/  PANDA_USB_RX_BUFF_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panda_usb_read_int_callback ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct panda_dev_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 

__attribute__((used)) static int FUNC12(struct panda_dev_priv *priv_dev)
{
  int err;
  struct urb *urb = NULL;
  u8 *buf;
  int inf_num;

  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++)
    FUNC1(priv_dev->interfaces[inf_num]);

  err = FUNC9(priv_dev->udev, 0, 1);
  if (err) {
    FUNC0(priv_dev->dev, "Can not set alternate setting to 1, error: %i", err);
    return err;
  }

  /* create a URB, and a buffer for it */
  urb = FUNC3(0, GFP_KERNEL);
  if (!urb) {
    return -ENOMEM;
  }

  buf = FUNC2(priv_dev->udev, PANDA_USB_RX_BUFF_SIZE,
			   GFP_KERNEL, &urb->transfer_dma);
  if (!buf) {
    FUNC0(priv_dev->dev, "No memory left for USB buffer\n");
    FUNC7(urb);
    return -ENOMEM;
  }

  FUNC5(urb, priv_dev->udev,
                   FUNC8(priv_dev->udev, 1),
                   buf, PANDA_USB_RX_BUFF_SIZE,
                   panda_usb_read_int_callback, priv_dev, 5);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  FUNC4(urb, &priv_dev->rx_submitted);

  err = FUNC10(urb, GFP_KERNEL);
  if (err) {
  FUNC11(urb);
    FUNC6(priv_dev->udev, PANDA_USB_RX_BUFF_SIZE,
		      buf, urb->transfer_dma);
    FUNC7(urb);
    FUNC0(priv_dev->dev, "Failed in start, while submitting urb.\n");
    return err;
  }

  /* Drop reference, USB core will take care of freeing it */
  FUNC7(urb);


  return 0;
}