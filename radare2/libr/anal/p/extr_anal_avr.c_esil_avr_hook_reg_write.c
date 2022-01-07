
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_9__ {int pc; } ;
struct TYPE_8__ {TYPE_1__* anal; } ;
struct TYPE_7__ {int cpu; } ;
typedef TYPE_2__ RAnalEsil ;
typedef TYPE_3__ CPU_MODEL ;


 int CPU_PC_MASK (TYPE_3__*) ;
 int MASK (int) ;
 TYPE_3__* get_cpu_model (int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int esil_avr_hook_reg_write(RAnalEsil *esil, const char *name, ut64 *val) {
 CPU_MODEL *cpu;

 if (!esil || !esil->anal) {
  return 0;
 }


 cpu = get_cpu_model (esil->anal->cpu);


 if (!strcmp (name, "pc")) {
  *val &= CPU_PC_MASK (cpu);
 } else if (!strcmp (name, "pcl")) {
  if (cpu->pc < 8) {
   *val &= MASK (8);
  }
 } else if (!strcmp (name, "pch")) {
  *val = cpu->pc > 8
   ? *val & MASK (cpu->pc - 8)
   : 0;
 }

 return 0;
}
