
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt7620_gsw {scalar_t__ port4; } ;
struct fe_priv {int* link; TYPE_1__* soc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ swpriv; } ;


 int GSW_REG_ISR ;
 int GSW_REG_PORT_STATUS (int) ;
 int IRQ_HANDLED ;
 scalar_t__ PORT4_EPHY ;
 int PORT_IRQ_ST_CHG ;
 int mt7620_handle_carrier (struct fe_priv*) ;
 int mt7620_print_link_state (struct fe_priv*,int,int,int,int) ;
 int mtk_switch_r32 (struct mt7620_gsw*,int ) ;
 int mtk_switch_w32 (struct mt7620_gsw*,int,int ) ;

__attribute__((used)) static irqreturn_t gsw_interrupt_mt7620(int irq, void *_priv)
{
 struct fe_priv *priv = (struct fe_priv *)_priv;
 struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
 u32 status;
 int i, max = (gsw->port4 == PORT4_EPHY) ? (4) : (3);

 status = mtk_switch_r32(gsw, GSW_REG_ISR);
 if (status & PORT_IRQ_ST_CHG)
  for (i = 0; i <= max; i++) {
   u32 status = mtk_switch_r32(gsw, GSW_REG_PORT_STATUS(i));
   int link = status & 0x1;

   if (link != priv->link[i])
    mt7620_print_link_state(priv, i, link,
       (status >> 2) & 3,
       (status & 0x2));

   priv->link[i] = link;
  }
 mt7620_handle_carrier(priv);
 mtk_switch_w32(gsw, status, GSW_REG_ISR);

 return IRQ_HANDLED;
}
