
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* insn; } ;
typedef TYPE_1__ tms320_dasm_t ;
typedef int insn_item_t ;
struct TYPE_8__ {struct TYPE_8__* i_list; } ;


 int * decode_insn (TYPE_1__*) ;
 int i_list_last (TYPE_4__*) ;
 scalar_t__ run_f_list (TYPE_1__*) ;
 scalar_t__ run_m_list (TYPE_1__*) ;

insn_item_t * decode_insn_head(tms320_dasm_t * dasm)
{
 run_f_list(dasm);

 if (dasm->insn->i_list) {
  dasm->insn = dasm->insn->i_list;
  while (!i_list_last(dasm->insn)) {
   if (run_m_list (dasm) && run_f_list (dasm)) {
    break;
   }
   dasm->insn++;
  }
 }

 if (!i_list_last (dasm->insn)) {
  return decode_insn (dasm);
 }

 return ((void*)0);
}
