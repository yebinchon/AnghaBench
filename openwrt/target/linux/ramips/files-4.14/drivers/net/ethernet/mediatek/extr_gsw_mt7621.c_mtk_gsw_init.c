
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mt7620_gsw {scalar_t__ irq; } ;
struct fe_priv {TYPE_1__* soc; struct device_node* switch_np; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int compatible; } ;
struct TYPE_3__ {struct mt7620_gsw* swpriv; } ;


 int EINVAL ;
 int ENODEV ;
 int disable_irq (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int gsw_interrupt_mt7621 ;
 TYPE_2__* mediatek_gsw_match ;
 int mt7621_hw_init (struct mt7620_gsw*,struct device_node*) ;
 int of_device_is_compatible (struct device_node*,int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct mt7620_gsw* platform_get_drvdata (struct platform_device*) ;
 int request_irq (scalar_t__,int ,int ,char*,struct fe_priv*) ;

int mtk_gsw_init(struct fe_priv *priv)
{
 struct device_node *np = priv->switch_np;
 struct platform_device *pdev = of_find_device_by_node(np);
 struct mt7620_gsw *gsw;

 if (!pdev)
  return -ENODEV;

 if (!of_device_is_compatible(np, mediatek_gsw_match->compatible))
  return -EINVAL;

 gsw = platform_get_drvdata(pdev);
 priv->soc->swpriv = gsw;

 if (gsw->irq) {
  request_irq(gsw->irq, gsw_interrupt_mt7621, 0,
       "gsw", priv);
  disable_irq(gsw->irq);
 }

 mt7621_hw_init(gsw, np);

 if (gsw->irq)
  enable_irq(gsw->irq);

 return 0;
}
