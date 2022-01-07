
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ physical_offset; } ;


 int ERROR ;
 TYPE_1__ config ;
 int debug (int ,char*) ;

size_t libkdump_phys_to_virt(size_t addr) {

  if (addr + config.physical_offset < config.physical_offset)
    return addr;



  if (addr >= (64ULL * 1024ULL * 1024ULL * 1024ULL * 1024ULL)) {
    debug(ERROR, "phys_to_virt argument is > 64 TB\n");
    return -1ULL;
  }


  return addr + config.physical_offset;
}
