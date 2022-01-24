#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct panda_usb_ctx {int /*<<< orphan*/  ndx; } ;
struct panda_usb_can_msg {int /*<<< orphan*/  data; void* bus_dat_len; void* rir; } ;
struct panda_inf_priv {int mcu_can_ifnum; TYPE_1__* netdev; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int PANDA_CAN_EXTENDED ; 
 int PANDA_CAN_TRANSMIT ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int,int) ; 
 struct panda_inf_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct panda_usb_ctx*) ; 
 struct panda_usb_ctx* FUNC9 (struct panda_inf_priv*,struct can_frame*) ; 
 int FUNC10 (struct panda_inf_priv*,struct panda_usb_can_msg*,struct panda_usb_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb,
					struct net_device *netdev)
{
  struct panda_inf_priv *priv_inf = FUNC7(netdev);
  struct can_frame *cf = (struct can_frame *)skb->data;
  struct panda_usb_ctx *ctx = NULL;
  struct net_device_stats *stats = &priv_inf->netdev->stats;
  int err;
  struct panda_usb_can_msg usb_msg = {};
  int bus = priv_inf->mcu_can_ifnum;

  if (FUNC0(netdev, skb)){
    FUNC11("Invalid CAN packet");
    return NETDEV_TX_OK;
  }

  ctx = FUNC9(priv_inf, cf);

  //Warning: cargo cult. Can't tell what this is for, but it is
  //everywhere and encouraged in the documentation.
  FUNC2(skb, priv_inf->netdev, ctx->ndx);

  if(cf->can_id & CAN_EFF_FLAG){
    usb_msg.rir = FUNC3(((cf->can_id & 0x1FFFFFFF) << 3) |
			      PANDA_CAN_TRANSMIT | PANDA_CAN_EXTENDED);
  }else{
    usb_msg.rir = FUNC3(((cf->can_id & 0x7FF) << 21) | PANDA_CAN_TRANSMIT);
  }
  usb_msg.bus_dat_len = FUNC3((cf->can_dlc & 0x0F) | (bus << 4));

  FUNC5(usb_msg.data, cf->data, cf->can_dlc);

  //TODO Handle Remote Frames
  //if (cf->can_id & CAN_RTR_FLAG)
  //  usb_msg.dlc |= PANDA_DLC_RTR_MASK;

  FUNC6(netdev, "Received data from socket. canid: %x; len: %d\n", cf->can_id, cf->can_dlc);

  err = FUNC10(priv_inf, &usb_msg, ctx);
  if (err)
    goto xmit_failed;

  return NETDEV_TX_OK;

 xmit_failed:
  FUNC1(priv_inf->netdev, ctx->ndx);
  FUNC8(ctx);
  FUNC4(skb);
  stats->tx_dropped++;

  return NETDEV_TX_OK;
}