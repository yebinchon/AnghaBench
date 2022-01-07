
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int opcode; TYPE_2__* head; int * insn; int map; } ;
typedef TYPE_1__ tms320_dasm_t ;
struct TYPE_7__ {int insn; } ;
typedef TYPE_2__ insn_head_t ;


 scalar_t__ TMS320_F_CPU_C55X ;
 int* c55x_e_list ;
 void* ht_up_find (int ,int,int *) ;
 scalar_t__ tms320_f_get_cpu (TYPE_1__*) ;

insn_head_t * lookup_insn_head(tms320_dasm_t * dasm) {
 ut8 * e_list = ((void*)0);


 if (tms320_f_get_cpu (dasm) == TMS320_F_CPU_C55X) {
  e_list = c55x_e_list;
 }
 while (e_list && (e_list[0] && e_list[1])) {
  if ((dasm->opcode & e_list[0]) == e_list[1]) {
   dasm->head = ht_up_find (dasm->map, e_list[1], ((void*)0));
   break;
  }
  e_list += 2;
 }
 if (!dasm->head) {
  dasm->head = ht_up_find (dasm->map, dasm->opcode, ((void*)0));
  if (!dasm->head) {
   dasm->head = ht_up_find (dasm->map, (dasm->opcode & 0xfe), ((void*)0));
  }
 }
 dasm->insn = dasm->head ? &dasm->head->insn : ((void*)0);
 return dasm->head;
}
