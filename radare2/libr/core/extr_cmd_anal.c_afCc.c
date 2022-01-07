
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef long long ut64 ;
typedef int ut32 ;
struct TYPE_3__ {long long offset; int anal; int num; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 int eprintf (char*) ;
 int r_anal_fcn_cost (int ,int *) ;
 int * r_anal_fcn_find_name (int ,char const*) ;
 int * r_anal_get_fcn_in (int ,long long,int ) ;
 int r_cons_printf (char*,int ) ;
 long long r_num_math (int ,char const*) ;

__attribute__((used)) static void afCc(RCore *core, const char *input) {
 ut64 addr;
 RAnalFunction *fcn;
 if (*input == ' ') {
  addr = r_num_math (core->num, input);
 } else {
  addr = core->offset;
 }
 if (addr == 0LL) {
  fcn = r_anal_fcn_find_name (core->anal, input + 3);
 } else {
  fcn = r_anal_get_fcn_in (core->anal, addr, R_ANAL_FCN_TYPE_NULL);
 }
 if (fcn) {
  ut32 totalCycles = r_anal_fcn_cost (core->anal, fcn);


  r_cons_printf ("%d\n", totalCycles);
 } else {
  eprintf ("afCc: Cannot find function\n");
 }
}
