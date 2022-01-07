
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {int bits; } ;
typedef int RAnalOpMask ;
typedef int RAnalOp ;
typedef TYPE_1__ RAnal ;


 int arm_op32 (TYPE_1__*,int *,int ,int const*,int) ;
 int arm_op64 (TYPE_1__*,int *,int ,int const*,int) ;

__attribute__((used)) static int arm_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *data, int len, RAnalOpMask mask) {
 if (anal->bits == 64) {
  return arm_op64 (anal, op, addr, data, len);
 }
 return arm_op32 (anal, op, addr, data, len);
}
