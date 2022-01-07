
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7620_gsw {int dummy; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;


 int GSW_PORT6 ;
 int GSW_REG_PORT_STATUS (int) ;
 int mtk_switch_r32 (struct mt7620_gsw*,int ) ;

int mt7620_has_carrier(struct fe_priv *priv)
{
 struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
 int i;

 for (i = 0; i < GSW_PORT6; i++)
  if (mtk_switch_r32(gsw, GSW_REG_PORT_STATUS(i)) & 0x1)
   return 1;
 return 0;
}
