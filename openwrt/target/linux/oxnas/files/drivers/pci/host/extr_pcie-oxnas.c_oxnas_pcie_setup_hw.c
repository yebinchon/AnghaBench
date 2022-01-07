
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int end; int start; } ;
struct TYPE_7__ {int end; int start; } ;
struct TYPE_6__ {int start; int end; } ;
struct TYPE_5__ {int start; int end; } ;
struct oxnas_pcie {scalar_t__ base; int pcie_ctrl_offset; int sys_ctrl; TYPE_4__ cfg; scalar_t__ outbound_offset; TYPE_3__ io; TYPE_2__ pre_mem; TYPE_1__ non_mem; scalar_t__ inbound; } ;


 int ENABLE_IN_ADDR_TRANS ;
 scalar_t__ IB_ADDR_XLATE_ENABLE ;
 scalar_t__ PCIE_IN0_MEM_ADDR ;
 scalar_t__ PCIE_IN0_MEM_LIMIT ;
 scalar_t__ PCIE_IN1_MEM_ADDR ;
 scalar_t__ PCIE_IN1_MEM_LIMIT ;
 scalar_t__ PCIE_IN_CFG0_ADDR ;
 scalar_t__ PCIE_IN_CFG0_LIMIT ;
 scalar_t__ PCIE_IN_IO_ADDR ;
 scalar_t__ PCIE_IN_IO_LIMIT ;
 int PCIE_OBTRANS ;
 scalar_t__ PCIE_POM0_MEM_ADDR ;
 scalar_t__ PCIE_POM1_MEM_ADDR ;
 scalar_t__ PCI_CONFIG_COMMAND_STATUS ;
 int oxnas_register_clear_mask (scalar_t__,int ) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void oxnas_pcie_setup_hw(struct oxnas_pcie *pcie)
{





 oxnas_register_clear_mask(pcie->inbound + IB_ADDR_XLATE_ENABLE,
      ENABLE_IN_ADDR_TRANS);
 wmb();
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN0_MEM_ADDR, pcie->non_mem.start);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN0_MEM_LIMIT, pcie->non_mem.end);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_POM0_MEM_ADDR, pcie->non_mem.start);


 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN1_MEM_ADDR, pcie->pre_mem.start);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN1_MEM_LIMIT, pcie->pre_mem.end);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_POM1_MEM_ADDR, pcie->pre_mem.start);


 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN_IO_ADDR, pcie->io.start);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN_IO_LIMIT, pcie->io.end);



 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN_CFG0_ADDR, pcie->cfg.start);
 regmap_write(pcie->sys_ctrl, pcie->outbound_offset + PCIE_IN_CFG0_LIMIT, pcie->cfg.end);
 wmb();


 regmap_write_bits(pcie->sys_ctrl, pcie->pcie_ctrl_offset, PCIE_OBTRANS, PCIE_OBTRANS);
 wmb();







 writel_relaxed(7, pcie->base + PCI_CONFIG_COMMAND_STATUS);

 wmb();
}
