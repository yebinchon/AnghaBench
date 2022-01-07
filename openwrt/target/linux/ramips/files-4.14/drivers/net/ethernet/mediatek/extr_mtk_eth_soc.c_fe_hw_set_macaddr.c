
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int page_lock; } ;


 int FE_GDMA1_MAC_ADRH ;
 int FE_GDMA1_MAC_ADRL ;
 int fe_w32 (unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void fe_hw_set_macaddr(struct fe_priv *priv, unsigned char *mac)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->page_lock, flags);
 fe_w32((mac[0] << 8) | mac[1], FE_GDMA1_MAC_ADRH);
 fe_w32((mac[2] << 24) | (mac[3] << 16) | (mac[4] << 8) | mac[5],
        FE_GDMA1_MAC_ADRL);
 spin_unlock_irqrestore(&priv->page_lock, flags);
}
