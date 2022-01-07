
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_8__ {scalar_t__ cpu; } ;
typedef int (* TMS_ANAL_OP_FN ) (TYPE_1__*,int *,int ,int const*,int) ;
typedef int RAnalOpMask ;
typedef int RAnalOp ;
typedef TYPE_1__ RAnal ;


 scalar_t__ r_str_casecmp (scalar_t__,char*) ;
 int tms320_c54x_op (TYPE_1__*,int *,int ,int const*,int) ;
 int tms320_c55x_op (TYPE_1__*,int *,int ,int const*,int) ;
 int tms320_c55x_plus_op (TYPE_1__*,int *,int ,int const*,int) ;
 int tms320c64x_analop (TYPE_1__*,int *,int ,int const*,int,int ) ;

int tms320_op(RAnal * anal, RAnalOp * op, ut64 addr, const ut8 * buf, int len, RAnalOpMask mask) {
 TMS_ANAL_OP_FN aop = tms320_c55x_op;

 if (anal->cpu && r_str_casecmp(anal->cpu, "c64x") == 0) {



  return -1;

 }
 if (anal->cpu && r_str_casecmp(anal->cpu, "c54x") == 0) {
  aop = tms320_c54x_op;
 } else if (anal->cpu && r_str_casecmp(anal->cpu, "c55x") == 0) {
  aop = tms320_c55x_op;
 } else if (anal->cpu && r_str_casecmp(anal->cpu, "c55x+") == 0) {
  aop = tms320_c55x_plus_op;
 }
 return aop (anal, op, addr, buf, len);
}
