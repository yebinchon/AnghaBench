
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_dev_desc_t ;


 int CONFIG_SPL_BLOCKDEV_ID ;
 char* CONFIG_SPL_BLOCKDEV_INTERFACE ;
 int * get_dev (char*,int ) ;
 int hang () ;
 int printf (char*,char*,int ) ;
 int spl_block_device_init () ;

block_dev_desc_t * spl_get_block_device(void)
{
 block_dev_desc_t * device;

 spl_block_device_init();

 device = get_dev(CONFIG_SPL_BLOCKDEV_INTERFACE, CONFIG_SPL_BLOCKDEV_ID);
 if (!device) {
  printf("blk device %s%d not exists\n",
   CONFIG_SPL_BLOCKDEV_INTERFACE,
   CONFIG_SPL_BLOCKDEV_ID);
  hang();
 }

 return device;
}
