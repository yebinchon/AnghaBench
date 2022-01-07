
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {scalar_t__ cpu; } ;
typedef int RAnalOpMask ;
typedef int RAnalOp ;
typedef TYPE_1__ RAnal ;


 int anal_pic_midrange_op (TYPE_1__*,int *,int ,int const*,int) ;
 int anal_pic_pic18_op (TYPE_1__*,int *,int ,int const*,int) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;

__attribute__((used)) static int anal_pic_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 if (anal->cpu && strcasecmp (anal->cpu, "baseline") == 0) {

  return -1;
 }
 if (anal->cpu && strcasecmp (anal->cpu, "midrange") == 0) {
  return anal_pic_midrange_op (anal, op, addr, buf, len);
 }
 if (anal->cpu && strcasecmp (anal->cpu, "pic18") == 0) {
  return anal_pic_pic18_op (anal, op, addr, buf, len);
 }
 return -1;
}
