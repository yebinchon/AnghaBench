
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct connection {int lock; struct sk_buff** tx_skb; TYPE_1__* tx_desc; } ;
struct TYPE_6__ {int vcc; } ;
struct TYPE_5__ {struct connection* conn; } ;
struct TYPE_4__ {scalar_t__ own; } ;


 TYPE_3__* ATM_SKB (struct sk_buff*) ;
 int atm_free_tx_skb_vcc (struct sk_buff*,int ) ;
 int dma_tx_descriptor_length ;
 TYPE_2__ g_atm_priv_data ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_tx_ring(unsigned int queue)
{
 unsigned long flags;
 int i;
 struct connection *conn = &g_atm_priv_data.conn[queue];
 struct sk_buff *skb;

 if (!conn)
  return;

 spin_lock_irqsave(&conn->lock, flags);

 for (i = 0; i < dma_tx_descriptor_length; i++) {
  if (conn->tx_desc[i].own == 0 && conn->tx_skb[i] != ((void*)0)) {
   skb = conn->tx_skb[i];
   conn->tx_skb[i] = ((void*)0);
   atm_free_tx_skb_vcc(skb, ATM_SKB(skb)->vcc);
  }
 }
 spin_unlock_irqrestore(&conn->lock, flags);
}
