
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_oxnas_host_priv {scalar_t__ core_base; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;


 scalar_t__ DEVICE_CONTROL ;
 int DEVICE_CONTROL_ATA_ERR_OVERRIDE ;
 int DPRINTK (char*) ;
 int OXNASSATA_NOTRAID ;
 scalar_t__ PORT_ERROR_MASK ;
 int UNKNOWN_MODE ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int sata_oxnas_set_mode (struct ata_host*,int ,int) ;

__attribute__((used)) static inline void sata_oxnas_reset_ucode(struct ata_host *ah, int force,
       int no_microcode)
{
 struct sata_oxnas_host_priv *hd = ah->private_data;

 DPRINTK("ENTER\n");
 if (no_microcode) {
  u32 reg;

  sata_oxnas_set_mode(ah, UNKNOWN_MODE, force);
  reg = ioread32(hd->core_base + DEVICE_CONTROL);
  reg |= DEVICE_CONTROL_ATA_ERR_OVERRIDE;
  iowrite32(reg, hd->core_base + DEVICE_CONTROL);
 } else {

  sata_oxnas_set_mode(ah, OXNASSATA_NOTRAID, force);


  iowrite32(0x0, hd->core_base + PORT_ERROR_MASK);
 }
}
