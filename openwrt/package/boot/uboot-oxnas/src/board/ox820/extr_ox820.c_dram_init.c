
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ram_size; } ;


 int CONFIG_MAX_SDRAM_SIZE ;
 scalar_t__ CONFIG_SYS_SDRAM_BASE ;
 int dram_size (long*,int ) ;
 TYPE_1__* gd ;

int dram_init(void)
{
 gd->ram_size = dram_size((long int *)CONFIG_SYS_SDRAM_BASE,
     CONFIG_MAX_SDRAM_SIZE);
 return 0;
}
