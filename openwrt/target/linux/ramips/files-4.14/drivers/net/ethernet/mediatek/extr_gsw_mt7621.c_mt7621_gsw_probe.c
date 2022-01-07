
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct mt7620_gsw {int irq; int * dev; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct mt7620_gsw* devm_kzalloc (int *,int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mt7620_gsw*) ;

__attribute__((used)) static int mt7621_gsw_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 struct mt7620_gsw *gsw;

 gsw = devm_kzalloc(&pdev->dev, sizeof(struct mt7620_gsw), GFP_KERNEL);
 if (!gsw)
  return -ENOMEM;

 gsw->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(gsw->base))
  return PTR_ERR(gsw->base);

 gsw->dev = &pdev->dev;
 gsw->irq = platform_get_irq(pdev, 0);

 platform_set_drvdata(pdev, gsw);

 return 0;
}
