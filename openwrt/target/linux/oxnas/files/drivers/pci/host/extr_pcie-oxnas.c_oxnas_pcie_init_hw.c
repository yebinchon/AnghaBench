
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct platform_device {int dev; } ;
struct oxnas_pcie {scalar_t__ card_reset; int pcie_ctrl_offset; int sys_ctrl; scalar_t__ haslink; scalar_t__ base; int clk; int hcsl_en; int busclk; } ;


 int BIT (int ) ;
 int PCIE_DEVICE_TYPE_MASK ;
 int PCIE_DEVICE_TYPE_ROOT ;
 int PCIE_LTSSM ;
 int PCIE_READY_ENTR_L23 ;
 scalar_t__ PCI_CONFIG_VERSION_DEVICEID ;
 int SYS_CTRL_HCSL_CTRL_REGOFFSET ;
 scalar_t__ VERSION_ID_MAGIC ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int device_reset (int *) ;
 int gpio_direction_input (scalar_t__) ;
 int gpio_direction_output (scalar_t__,int ) ;
 int mdelay (int) ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void oxnas_pcie_init_hw(struct platform_device *pdev,
          struct oxnas_pcie *pcie)
{
 u32 version_id;
 int ret;

 clk_prepare_enable(pcie->busclk);


 if (pcie->card_reset >= 0 &&
     !gpio_direction_output(pcie->card_reset, 0)) {
  wmb();
  mdelay(10);

  gpio_direction_input(pcie->card_reset);
  wmb();
  mdelay(100);
 }


 regmap_update_bits(pcie->sys_ctrl, SYS_CTRL_HCSL_CTRL_REGOFFSET,
                    BIT(pcie->hcsl_en), BIT(pcie->hcsl_en));


 ret = device_reset(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "core reset failed %d\n", ret);
  return;
 }


 clk_prepare_enable(pcie->clk);

 version_id = readl_relaxed(pcie->base + PCI_CONFIG_VERSION_DEVICEID);
 dev_info(&pdev->dev, "PCIe version/deviceID 0x%x\n", version_id);

 if (version_id != VERSION_ID_MAGIC) {
  dev_info(&pdev->dev, "PCIe controller not found\n");
  pcie->haslink = 0;
  return;
 }


 regmap_write_bits(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
                   PCIE_READY_ENTR_L23, PCIE_READY_ENTR_L23);


 regmap_write_bits(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
                   PCIE_DEVICE_TYPE_MASK, PCIE_DEVICE_TYPE_ROOT);
 wmb();


 regmap_write_bits(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
                   PCIE_LTSSM, PCIE_LTSSM);
 wmb();
}
