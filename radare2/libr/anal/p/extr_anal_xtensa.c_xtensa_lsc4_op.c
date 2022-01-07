
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RAnalOp ;
typedef int RAnal ;


 int xtensa_load_op (int *,int *,int ,int const*) ;
 int xtensa_store_op (int *,int *,int ,int const*) ;
 int xtensa_unk_op (int *,int *,int ,int const*) ;

__attribute__((used)) static void xtensa_lsc4_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 switch ((buf[2] >> 4) & 0xf) {
 case 0x0:
  xtensa_load_op (anal, op, addr, buf);
  break;
 case 0x4:
  xtensa_store_op (anal, op, addr, buf);
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
