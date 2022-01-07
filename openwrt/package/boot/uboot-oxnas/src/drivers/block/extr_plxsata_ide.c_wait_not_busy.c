
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ATA_STATUS_BSY_BIT ;
 unsigned long SATA_COMMAND_BIT ;
 int SATA_ORB2_OFF ;
 unsigned long** sata_regs_base ;
 int udelay (int) ;

__attribute__((used)) static unsigned int wait_not_busy(int device, unsigned long timeout_secs)
{
 int busy = 1;
 unsigned long loops = (timeout_secs * 1000) / 50;
 do {

  if (!((*(sata_regs_base[device] + SATA_ORB2_OFF)
   >> SATA_COMMAND_BIT) & (1UL << ATA_STATUS_BSY_BIT))) {

   busy = 0;
   break;
  }


  udelay(50000);
 } while (--loops);

 return busy;
}
