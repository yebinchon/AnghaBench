
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct switch_dev {char* name; char* alias; int * ops; int vlans; int ports; int cpu_port; struct device_node* of_node; } ;
struct rt305x_esw {int port_map; int port_disable; int reg_initval_fct2; int reg_initval_fpa2; int reg_led_polarity; int irq; struct switch_dev swdev; int reg_rw_lock; int base; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT305X_ESW_NUM_PORTS ;
 int RT305X_ESW_NUM_VIDS ;
 int RT305X_ESW_PORT6 ;
 int RT305X_ESW_PORT_ST_CHG ;
 int RT305X_ESW_REG_IMR ;
 int RT305X_ESW_REG_ISR ;
 int be32_to_cpu (int const) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct rt305x_esw* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int ,int ,int ,char*,struct rt305x_esw*) ;
 int esw_hw_init (struct rt305x_esw*) ;
 int esw_interrupt ;
 int esw_ops ;
 int esw_w32 (struct rt305x_esw*,int ,int ) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rt305x_esw*) ;
 int register_switch (struct switch_dev*,int *) ;
 int spin_lock_init (int *) ;
 int unregister_switch (struct switch_dev*) ;

__attribute__((used)) static int esw_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 struct device_node *np = pdev->dev.of_node;
 const __be32 *port_map, *port_disable, *reg_init;
 struct switch_dev *swdev;
 struct rt305x_esw *esw;
 int ret;

 esw = devm_kzalloc(&pdev->dev, sizeof(*esw), GFP_KERNEL);
 if (!esw)
  return -ENOMEM;

 esw->dev = &pdev->dev;
 esw->irq = irq_of_parse_and_map(np, 0);
 esw->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(esw->base))
  return PTR_ERR(esw->base);

 port_map = of_get_property(np, "mediatek,portmap", ((void*)0));
 if (port_map)
  esw->port_map = be32_to_cpu(*port_map);

 port_disable = of_get_property(np, "mediatek,portdisable", ((void*)0));
 if (port_disable)
  esw->port_disable = be32_to_cpu(*port_disable);

 reg_init = of_get_property(np, "ralink,fct2", ((void*)0));
 if (reg_init)
  esw->reg_initval_fct2 = be32_to_cpu(*reg_init);

 reg_init = of_get_property(np, "ralink,fpa2", ((void*)0));
 if (reg_init)
  esw->reg_initval_fpa2 = be32_to_cpu(*reg_init);

 reg_init = of_get_property(np, "mediatek,led_polarity", ((void*)0));
 if (reg_init)
  esw->reg_led_polarity = be32_to_cpu(*reg_init);

 swdev = &esw->swdev;
 swdev->of_node = pdev->dev.of_node;
 swdev->name = "rt305x-esw";
 swdev->alias = "rt305x";
 swdev->cpu_port = RT305X_ESW_PORT6;
 swdev->ports = RT305X_ESW_NUM_PORTS;
 swdev->vlans = RT305X_ESW_NUM_VIDS;
 swdev->ops = &esw_ops;

 ret = register_switch(swdev, ((void*)0));
 if (ret < 0) {
  dev_err(&pdev->dev, "register_switch failed\n");
  return ret;
 }

 platform_set_drvdata(pdev, esw);

 spin_lock_init(&esw->reg_rw_lock);

 esw_hw_init(esw);

 reg_init = of_get_property(np, "ralink,rgmii", ((void*)0));
 if (reg_init && be32_to_cpu(*reg_init) == 1) {




  dev_err(&pdev->dev, "RGMII mode, not exporting switch device.\n");
  unregister_switch(&esw->swdev);
  platform_set_drvdata(pdev, ((void*)0));
  return -ENODEV;
 }

 ret = devm_request_irq(&pdev->dev, esw->irq, esw_interrupt, 0, "esw",
          esw);

 if (!ret) {
  esw_w32(esw, RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_ISR);
  esw_w32(esw, ~RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_IMR);
 }

 return ret;
}
