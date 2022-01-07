
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {int phys_size; int log_block_size; scalar_t__ phys_addr; int log_page_size; int phys_erase_block; int hal_erase_f; int hal_write_f; int hal_read_f; } ;
typedef TYPE_1__ spiffs_config ;


 scalar_t__ ALIGN ;
 int FALSE ;
 int INTERNAL_FLASH_SECTOR_SIZE ;
 int LOG_BLOCK_SIZE ;
 int LOG_BLOCK_SIZE_SMALL_FS ;
 int LOG_PAGE_SIZE ;
 int MIN_BLOCKS_FS ;
 int NODEMCU_SPIFFS0_PARTITION ;
 int NODE_DBG (char*,scalar_t__,...) ;
 int SPIFFS_probe_fs (TYPE_1__*) ;
 int TRUE ;
 int my_spiffs_erase ;
 int my_spiffs_read ;
 int my_spiffs_write ;
 scalar_t__ platform_flash_get_partition (int ,scalar_t__*) ;

__attribute__((used)) static bool myspiffs_set_cfg(spiffs_config *cfg, bool force_create) {
  uint32 pt_start, pt_size, pt_end;

  pt_size = platform_flash_get_partition (NODEMCU_SPIFFS0_PARTITION, &pt_start);
  if (pt_size == 0) {
    return FALSE;
  }
  pt_end = pt_start + pt_size;

  cfg->hal_read_f = my_spiffs_read;
  cfg->hal_write_f = my_spiffs_write;
  cfg->hal_erase_f = my_spiffs_erase;
  cfg->phys_erase_block = INTERNAL_FLASH_SECTOR_SIZE;
  cfg->log_page_size = LOG_PAGE_SIZE;
  cfg->phys_addr = (pt_start + ALIGN - 1) & ~(ALIGN - 1);
  cfg->phys_size = (pt_end & ~(ALIGN - 1)) - cfg->phys_addr;

  if (cfg->phys_size < MIN_BLOCKS_FS * LOG_BLOCK_SIZE_SMALL_FS) {
    return FALSE;
  } else if (cfg->phys_size < MIN_BLOCKS_FS * LOG_BLOCK_SIZE_SMALL_FS) {
    cfg->log_block_size = LOG_BLOCK_SIZE_SMALL_FS;
  } else {
    cfg->log_block_size = LOG_BLOCK_SIZE;
  }
  NODE_DBG("myspiffs set cfg block: %x  %x  %x  %x  %x  %x\n", pt_start, pt_end,
           cfg->phys_size, cfg->phys_addr, cfg->phys_size, cfg->log_block_size);

  return TRUE;
}
