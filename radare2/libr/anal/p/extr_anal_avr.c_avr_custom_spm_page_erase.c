
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef unsigned long long ut64 ;
struct TYPE_7__ {TYPE_1__* anal; } ;
struct TYPE_6__ {int cpu; int reg; } ;
typedef TYPE_2__ RAnalEsil ;
typedef int CPU_MODEL ;


 int CPU_CONST_PARAM ;
 unsigned long long CPU_PC_MASK (int *) ;
 unsigned long long MASK (unsigned long long) ;
 int __esil_pop_argument (TYPE_2__*,unsigned long long*) ;
 int const_by_name (int *,int ,char*) ;
 unsigned long long const_get_value (int ) ;
 int * get_cpu_model (int ) ;
 int r_anal_esil_mem_write (TYPE_2__*,unsigned long long,int*,int) ;

__attribute__((used)) static bool avr_custom_spm_page_erase(RAnalEsil *esil) {
 CPU_MODEL *cpu;
 ut8 c;
 ut64 addr, page_size_bits, i;


 if (!esil || !esil->anal || !esil->anal->reg) {
  return 0;
 }


 if (!__esil_pop_argument(esil, &addr)) {
  return 0;
 }


 cpu = get_cpu_model (esil->anal->cpu);
 page_size_bits = const_get_value (const_by_name (cpu, CPU_CONST_PARAM, "page_size"));


 addr &= ~(MASK (page_size_bits));



 c = 0xff;
 for (i = 0; i < (1ULL << page_size_bits); i++) {
  r_anal_esil_mem_write (
   esil, (addr + i) & CPU_PC_MASK (cpu), &c, 1);
 }

 return 1;
}
