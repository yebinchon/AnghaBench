
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg; int iob; } ;
typedef TYPE_1__ RAnal ;


 int PIC_MIDRANGE_ESIL_CSTACK_TOP ;
 int PIC_MIDRANGE_ESIL_SRAM_START ;
 int cpu_memory_map (int *,int ,int,int) ;
 int mem_sram ;
 int mem_stack ;
 int pic_midrange_reg_write (int ,char*,int) ;

__attribute__((used)) static void anal_pic_midrange_malloc (RAnal *anal, bool force) {
 static bool init_done = 0;

 if (!init_done || force) {



  mem_sram =
   cpu_memory_map (&anal->iob, mem_sram,
     PIC_MIDRANGE_ESIL_SRAM_START, 0x1000);
  mem_stack =
   cpu_memory_map (&anal->iob, mem_stack,
     PIC_MIDRANGE_ESIL_CSTACK_TOP, 0x20);

  pic_midrange_reg_write (anal->reg, "_sram",
     PIC_MIDRANGE_ESIL_SRAM_START);
  pic_midrange_reg_write (anal->reg, "_stack",
     PIC_MIDRANGE_ESIL_CSTACK_TOP);
  pic_midrange_reg_write (anal->reg, "stkptr", 0x1f);

  init_done = 1;
 }
}
