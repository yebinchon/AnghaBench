
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sint32_t ;
struct TYPE_3__ {int phys_size; int phys_addr; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int VFS_RES_OK ;
 TYPE_2__ fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_fscfg( uint32_t *phys_addr, uint32_t *phys_size ) {
  *phys_addr = fs.cfg.phys_addr;
  *phys_size = fs.cfg.phys_size;
  return VFS_RES_OK;
}
