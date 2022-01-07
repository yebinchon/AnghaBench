
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int MAX_SRC_WRITE_LOOPS ;
 int SATA_LINK_CONTROL ;
 int SATA_LINK_DATA ;
 int SATA_LINK_WR_ADDR ;
 unsigned long SATA_STD_ASYNC_REGS_OFF ;
 int printf (char*) ;
 unsigned long** sata_regs_base ;
 int udelay (int) ;

__attribute__((used)) static void scr_write(int device, unsigned int sc_reg, u32 val)
{

 *(sata_regs_base[device] + SATA_LINK_DATA) = val;


 *(sata_regs_base[device] + SATA_LINK_WR_ADDR) = sc_reg
  * 4+ SATA_STD_ASYNC_REGS_OFF;


 int loops = MAX_SRC_WRITE_LOOPS;
 do {
  if (*(sata_regs_base[device] + SATA_LINK_CONTROL) & 1UL) {
   break;
  }
  udelay(10);
 } while (--loops);

 if (!loops) {
  printf("scr_write() Timed out of wait for write completion\n");
 }
}
