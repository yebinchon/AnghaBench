
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t PicBaselineOpcode ;
typedef int PicBaselineOpInfo ;


 size_t PIC_BASELINE_OPCODE_INVALID ;
 int const* pic_baseline_op_info ;

const PicBaselineOpInfo *pic_baseline_get_op_info(PicBaselineOpcode opcode) {
 if (opcode >= PIC_BASELINE_OPCODE_INVALID) {
  return ((void*)0);
 }
 return &pic_baseline_op_info[opcode];
}
