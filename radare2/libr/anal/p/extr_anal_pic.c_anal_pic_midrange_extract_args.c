
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_4__ {int f; int d; int n; int k; int b; int m; } ;
typedef TYPE_1__ PicMidrangeOpArgsVal ;
typedef int PicMidrangeOpArgs ;



 int PIC_MIDRANGE_OP_ARGS_11K_MASK_K ;

 int PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_D ;
 int PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_F ;

 int PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_M ;
 int PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_N ;

 int PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_K ;
 int PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_N ;

 int PIC_MIDRANGE_OP_ARGS_2F_MASK_F ;

 int PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_B ;
 int PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_F ;

 int PIC_MIDRANGE_OP_ARGS_4K_MASK_K ;

 int PIC_MIDRANGE_OP_ARGS_7F_MASK_F ;

 int PIC_MIDRANGE_OP_ARGS_8K_MASK_K ;

 int PIC_MIDRANGE_OP_ARGS_9K_MASK_K ;

 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void anal_pic_midrange_extract_args (ut16 instr,
         PicMidrangeOpArgs args,
         PicMidrangeOpArgsVal *args_val) {

 memset (args_val, 0, sizeof (PicMidrangeOpArgsVal));

 switch (args) {
 case 128: return;
 case 134:
  args_val->f = instr & PIC_MIDRANGE_OP_ARGS_2F_MASK_F;
  return;
 case 131:
  args_val->f = instr & PIC_MIDRANGE_OP_ARGS_7F_MASK_F;
  return;
 case 137:
  args_val->f = instr & PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_F;
  args_val->d =
   (instr & PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_D) >> 7;
  return;
 case 135:
  args_val->n =
   (instr & PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_N) >> 6;
  args_val->k = instr & PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_K;
  return;
 case 133:
  args_val->b =
   (instr & PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_B) >> 7;
  args_val->f = instr & PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_F;
  return;
 case 132:
  args_val->k = instr & PIC_MIDRANGE_OP_ARGS_4K_MASK_K;
  return;
 case 130:
  args_val->k = instr & PIC_MIDRANGE_OP_ARGS_8K_MASK_K;
  return;
 case 129:
  args_val->k = instr & PIC_MIDRANGE_OP_ARGS_9K_MASK_K;
  return;
 case 138:
  args_val->k = instr & PIC_MIDRANGE_OP_ARGS_11K_MASK_K;
  return;
 case 136:
  args_val->n =
   (instr & PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_N) >> 2;
  args_val->m = instr & PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_M;
  return;
 }
}
