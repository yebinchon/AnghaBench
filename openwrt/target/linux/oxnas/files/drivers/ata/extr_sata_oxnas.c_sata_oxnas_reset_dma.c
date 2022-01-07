
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {scalar_t__ dmactl_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;


 scalar_t__ DMA_CONTROL ;
 int DMA_CONTROL_RESET ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void sata_oxnas_reset_dma(struct ata_port *ap, int assert)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;
 u32 reg;

 reg = ioread32(pd->dmactl_base + DMA_CONTROL);
 if (assert)
  reg |= DMA_CONTROL_RESET;
 else
  reg &= ~DMA_CONTROL_RESET;

 iowrite32(reg, pd->dmactl_base + DMA_CONTROL);
}
