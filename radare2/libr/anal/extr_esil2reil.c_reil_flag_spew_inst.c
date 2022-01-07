
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_14__ {TYPE_1__* anal; TYPE_2__* Reil; } ;
struct TYPE_13__ {int cur; } ;
struct TYPE_12__ {int bits; } ;
typedef TYPE_3__ RAnalEsil ;


 int r_anal_esil_push (TYPE_3__*,int ) ;
 int r_anal_esil_pushnum (TYPE_3__*,int) ;
 int r_num_get (int *,char const*) ;
 int reil_generate_borrow_flag (TYPE_3__*,int ) ;
 int reil_generate_carry_flag (TYPE_3__*,int ) ;
 int reil_generate_overflow_flag (TYPE_3__*) ;
 int reil_generate_partity_flag (TYPE_3__*) ;
 int reil_generate_signature (TYPE_3__*) ;

void reil_flag_spew_inst(RAnalEsil *esil, const char *flag) {
 ut8 bit;
 switch (flag[0]) {
  case 'z':
   r_anal_esil_push(esil, esil->Reil->cur);
   break;
  case 'b':
   bit = (ut8)r_num_get(((void*)0), &flag[1]);
   reil_generate_borrow_flag(esil, bit);
   break;
  case 'c':
   bit = (ut8)r_num_get(((void*)0), &flag[1]);
   reil_generate_carry_flag(esil, bit);
   break;
  case 'o':
   reil_generate_overflow_flag(esil);
   break;
  case 'p':
   reil_generate_partity_flag(esil);
   break;
  case 'r':
   r_anal_esil_pushnum(esil, esil->anal->bits / 8);
   break;
  case 's':
   reil_generate_signature(esil);
   break;
  default:
   return;
 }

 return;
}
