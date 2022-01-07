
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t PicMidrangeOpcode ;
typedef int PicMidrangeOpInfo ;


 size_t PIC_MIDRANGE_OPCODE_INVALID ;
 int const* pic_midrange_op_info ;

const PicMidrangeOpInfo *pic_midrange_get_op_info (PicMidrangeOpcode opcode) {
 if (opcode >= PIC_MIDRANGE_OPCODE_INVALID) {
  return ((void*)0);
 }
 return &pic_midrange_op_info[opcode];
}
