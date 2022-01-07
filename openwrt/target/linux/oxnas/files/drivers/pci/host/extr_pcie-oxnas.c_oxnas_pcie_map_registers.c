
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct oxnas_pcie {void* pcie_ctrl_offset; void* outbound_offset; int * phy; void* inbound; void* base; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 int * devm_of_phy_get (int *,struct device_node*,int *) ;
 int of_address_to_resource (struct device_node*,int,struct resource*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static int
oxnas_pcie_map_registers(struct platform_device *pdev,
    struct device_node *np,
    struct oxnas_pcie *pcie)
{
 struct resource regs;
 int ret = 0;
 u32 outbound_ctrl_offset;
 u32 pcie_ctrl_offset;

 ret = of_address_to_resource(np, 0, &regs);
 if (ret) {
  dev_err(&pdev->dev, "failed to parse base register space\n");
  return -EINVAL;
 }

 pcie->base = devm_ioremap_resource(&pdev->dev, &regs);
 if (!pcie->base) {
  dev_err(&pdev->dev, "failed to map base register space\n");
  return -ENOMEM;
 }

 ret = of_address_to_resource(np, 1, &regs);
 if (ret) {
  dev_err(&pdev->dev, "failed to parse inbound register space\n");
  return -EINVAL;
 }

 pcie->inbound = devm_ioremap_resource(&pdev->dev, &regs);
 if (!pcie->inbound) {
  dev_err(&pdev->dev, "failed to map inbound register space\n");
  return -ENOMEM;
 }

 pcie->phy = devm_of_phy_get(&pdev->dev, np, ((void*)0));
 if (IS_ERR(pcie->phy)) {
  if (PTR_ERR(pcie->phy) == -EPROBE_DEFER) {
   dev_err(&pdev->dev, "failed to probe phy\n");
   return PTR_ERR(pcie->phy);
  }
  dev_warn(&pdev->dev, "phy not attached\n");
  pcie->phy = ((void*)0);
 }

 if (of_property_read_u32(np, "plxtech,pcie-outbound-offset",
     &outbound_ctrl_offset)) {
  dev_err(&pdev->dev, "failed to parse outbound register offset\n");
  return -EINVAL;
 }
 pcie->outbound_offset = outbound_ctrl_offset;

 if (of_property_read_u32(np, "plxtech,pcie-ctrl-offset",
     &pcie_ctrl_offset)) {
  dev_err(&pdev->dev, "failed to parse pcie-ctrl register offset\n");
  return -EINVAL;
 }
 pcie->pcie_ctrl_offset = pcie_ctrl_offset;

 return 0;
}
