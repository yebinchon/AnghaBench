
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOS_AND_TX_LVL ;
 int PHY_LOOP_COUNT ;
 int SATA_SCR_CONTROL ;
 int SATA_SCR_ERROR ;
 int SATA_SCR_STATUS ;
 int SATA_STD_ASYNC_REGS_OFF ;
 int TX_ATTEN ;
 int scr_read (int,int ) ;
 int scr_write (int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int phy_reset(int device)
{
 int phy_status = 0;
 int loops = 0;

 scr_write(device, (0x60 - SATA_STD_ASYNC_REGS_OFF) / 4, LOS_AND_TX_LVL);
 scr_write(device, (0x70 - SATA_STD_ASYNC_REGS_OFF) / 4, TX_ATTEN);


 scr_write(device, SATA_SCR_CONTROL, 0x311);
 scr_read(device, SATA_SCR_STATUS);
 udelay(1000);
 scr_write(device, SATA_SCR_CONTROL, 0x310);


 do {
  udelay(200000);
  if ((scr_read(device, SATA_SCR_STATUS) & 0xf) == 3) {
   scr_write(device, SATA_SCR_ERROR, ~0);
   phy_status = 1;
   break;
  }

 } while (++loops < PHY_LOOP_COUNT);

 if (phy_status) {
  udelay(500000);
 }

 return phy_status;
}
