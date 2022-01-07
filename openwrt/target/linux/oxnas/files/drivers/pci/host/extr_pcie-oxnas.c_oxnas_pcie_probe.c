
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct oxnas_pcie {int haslink; scalar_t__ card_reset; int sys_ctrl; int lock; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_DIR_IN ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 struct oxnas_pcie* devm_kzalloc (TYPE_1__*,int,int ) ;
 int gpio_free (scalar_t__) ;
 int gpio_request_one (scalar_t__,int ,int ) ;
 int oxnas_pcie_enable (TYPE_1__*,struct oxnas_pcie*) ;
 int oxnas_pcie_init_hw (struct platform_device*,struct oxnas_pcie*) ;
 int oxnas_pcie_init_res (struct platform_device*,struct oxnas_pcie*,struct device_node*) ;
 scalar_t__ oxnas_pcie_link_up (struct oxnas_pcie*) ;
 int oxnas_pcie_map_registers (struct platform_device*,struct device_node*,struct oxnas_pcie*) ;
 int oxnas_pcie_shared_init (struct platform_device*,struct oxnas_pcie*) ;
 int spin_lock_init (int *) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int oxnas_pcie_probe(struct platform_device *pdev)
{
 struct oxnas_pcie *pcie;
 struct device_node *np = pdev->dev.of_node;
 int ret;

 pcie = devm_kzalloc(&pdev->dev, sizeof(struct oxnas_pcie),
       GFP_KERNEL);
 if (!pcie)
  return -ENOMEM;

 pcie->pdev = pdev;
 pcie->haslink = 1;
 spin_lock_init(&pcie->lock);

 pcie->sys_ctrl = syscon_regmap_lookup_by_compatible("oxsemi,ox820-sys-ctrl");
 if (IS_ERR(pcie->sys_ctrl))
  return PTR_ERR(pcie->sys_ctrl);

 ret = oxnas_pcie_init_res(pdev, pcie, np);
 if (ret)
  return ret;
 if (pcie->card_reset >= 0) {
  ret = gpio_request_one(pcie->card_reset, GPIOF_DIR_IN,
           dev_name(&pdev->dev));
  if (ret) {
   dev_err(&pdev->dev, "cannot request gpio pin %d\n",
    pcie->card_reset);
   return ret;
  }
 }

 ret = oxnas_pcie_map_registers(pdev, np, pcie);
 if (ret) {
  dev_err(&pdev->dev, "cannot map registers\n");
  goto err_free_gpio;
 }

 ret = oxnas_pcie_shared_init(pdev, pcie);
 if (ret)
  goto err_free_gpio;


 oxnas_pcie_init_hw(pdev, pcie);

 if (pcie->haslink && oxnas_pcie_link_up(pcie)) {
  pcie->haslink = 1;
  dev_info(&pdev->dev, "link up\n");
 } else {
  pcie->haslink = 0;
  dev_info(&pdev->dev, "link down\n");
 }


 oxnas_pcie_enable(&pdev->dev, pcie);

 return 0;

err_free_gpio:
 if (pcie->card_reset)
  gpio_free(pcie->card_reset);

 return ret;
}
