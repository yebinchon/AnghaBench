
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int device_select (int) ;
 int * disk_present ;
 int dma_start_write (int const*,int) ;
 int printf (char*,...) ;
 int udelay (int) ;
 int wait_dma_not_busy (int) ;
 int wait_no_error (int) ;
 scalar_t__ wait_not_busy (int,int) ;

void ide_output_data(int device, const ulong *sect_buf, int words)
{

 if (!disk_present[device]) {
  return;
 }


 device_select(device);


 dma_start_write(sect_buf, words << 2);



 udelay(1000);


 if (!wait_dma_not_busy(device)) {
  printf("Timed out of wait for DMA channel for SATA device %d to have in-progress clear\n",
   device);
 }


 if (wait_not_busy(device, 30)) {
  printf("Timed out of wait for SATA device %d to have BUSY clear\n",
   device);
 }
 if (!wait_no_error(device)) {
  printf("oxnas_sata_output_data() Wait for ATA no-error timed-out\n");
 }
}
