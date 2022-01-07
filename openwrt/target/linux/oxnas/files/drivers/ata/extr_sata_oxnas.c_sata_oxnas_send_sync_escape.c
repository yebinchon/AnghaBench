
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_port_priv {scalar_t__ port_base; } ;
struct ata_port {struct sata_oxnas_port_priv* private_data; } ;


 int CMD_SYNC_ESCAPE ;
 scalar_t__ SATA_COMMAND ;
 int SATA_OPCODE_MASK ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int sata_oxnas_link_read (struct ata_port*,int) ;

__attribute__((used)) static inline void sata_oxnas_send_sync_escape(struct ata_port *ap)
{
 struct sata_oxnas_port_priv *pd = ap->private_data;
 u32 reg;



 if ((sata_oxnas_link_read(ap, 0x20) & 3) == 3) {
  reg = ioread32(pd->port_base + SATA_COMMAND);
  reg &= ~SATA_OPCODE_MASK;
  reg |= CMD_SYNC_ESCAPE;
  iowrite32(reg, pd->port_base + SATA_COMMAND);
 }
}
