
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_3__ {int * intr0; int interrupts; } ;
typedef TYPE_1__ RAnalEsil ;


 int dict_del (int ,scalar_t__) ;

__attribute__((used)) static void _del_interrupt(RAnalEsil *esil, ut32 intr_num) {
 if (intr_num) {
  dict_del (esil->interrupts, intr_num);
 } else {
  esil->intr0 = ((void*)0);
 }
}
