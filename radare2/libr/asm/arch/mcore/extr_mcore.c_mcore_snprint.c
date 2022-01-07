
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_6__ {int type; char* name; TYPE_1__* args; } ;
typedef TYPE_2__ mcore_t ;
struct TYPE_5__ {int value; } ;




 int* load_shift ;
 int print_loop (char*,int,int ,TYPE_2__*) ;
 int snprintf (char*,int,char*,char*,size_t,size_t,int) ;

void mcore_snprint(char* str, int size, ut64 addr, mcore_t* instr) {
 ut32 imm;
 if (!instr || !str) {
  return;
 }
 switch (instr->type) {
 case 129:
 case 128:
  imm = instr->args[1].value << load_shift[instr->args[3].value];
  snprintf (str, size, "%s r%u, (r%u, 0x%x)",
   instr->name, instr->args[2].value, instr->args[0].value, imm);
  break;
 default:
  print_loop (str, size, addr, instr);
  break;
 }
}
