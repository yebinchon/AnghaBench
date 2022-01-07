
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_1__ ;


typedef int xtensa_opcode ;
typedef int xtensa_isa ;
typedef int xtensa_insnbuf ;
typedef int xtensa_format ;
struct TYPE_27__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int esil_abs_neg (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_add_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_add_sub (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_bitwise_op (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_check_bit (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_check_bit_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_check_mask (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_compare (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_compare_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_branch_compare_single (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_call (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_callx (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_extract_unsigned (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_load_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_load_relative (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_move (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_move_conditional (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_move_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_set_shift_amount (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_set_shift_amount_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_shift_logic_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_shift_logic_sar (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int esil_store_imm (int ,int,int ,size_t,int ,TYPE_1__*) ;
 int r_strbuf_setf (int *,char*) ;
 int xtensa_check_stack_op (int ,int,int ,size_t,int ,TYPE_1__*) ;

__attribute__((used)) static void analop_esil (xtensa_isa isa, xtensa_opcode opcode, xtensa_format format,
       size_t i, xtensa_insnbuf slot_buffer, RAnalOp *op) {
 switch (opcode) {
 case 26:
 case 41:
 case 43:
 case 44:
 case 45:
 case 42:
 case 46:
 case 47:
 case 48:
  esil_add_sub (isa, opcode, format, i, slot_buffer, op);
  break;
 case 32:
  esil_move (isa, opcode, format, i, slot_buffer, op);
  break;
 case 90:
 case 33:
  esil_move_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 0:
 case 34:
  r_strbuf_setf (&op->esil, "");
  break;


 case 453:
 case 36:
 case 100:
 case 99:
 case 101:
  esil_store_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 27:
 case 39:
  xtensa_check_stack_op (isa, opcode, format, i, slot_buffer, op);
  esil_add_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 98:
 case 35:
  r_strbuf_setf (&op->esil, "a0,pc,=");
  break;
 case 82:
 case 83:
 case 84:
 case 31:
 case 86:
  esil_load_imm (isa, opcode, format, i, slot_buffer, op);
  break;



 case 85:
  esil_load_relative (isa, opcode, format, i, slot_buffer, op);
  break;
 case 40:
  break;
 case 49:
 case 50:
 case 51:
  esil_bitwise_op (isa, opcode, format, i, slot_buffer, op);
  break;
 case 52:
 case 53:
 case 54:
 case 55:
 case 58:
 case 59:
  esil_branch_compare_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 56:
 case 57:
  esil_branch_check_bit_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 60:
 case 61:
 case 62:
 case 63:
 case 64:
 case 65:
  esil_branch_compare (isa, opcode, format, i, slot_buffer, op);
  break;
 case 66:
 case 67:
 case 68:
 case 69:
  esil_branch_check_mask (isa, opcode, format, i, slot_buffer, op);
  break;
 case 70:
 case 71:
  esil_branch_check_bit (isa, opcode, format, i, slot_buffer, op);
  break;
 case 72:
 case 73:
 case 28:
 case 29:
 case 74:
 case 75:
  esil_branch_compare_single (isa, opcode, format, i, slot_buffer, op);
  break;
 case 78:
  esil_extract_unsigned (isa, opcode, format, i, slot_buffer, op);
  break;
 case 79:
  r_strbuf_setf (&op->esil, "");
  break;

 case 7:
  break;
 case 76:
 case 80:
  esil_call (isa, opcode, format, i, slot_buffer, op);
  break;
 case 81:
 case 77:
  esil_callx (isa, opcode, format, i, slot_buffer, op);
  break;
 case 91:
 case 92:
 case 93:
 case 94:
  esil_move_conditional (isa, opcode, format, i, slot_buffer, op);
  break;
 case 96:
 case 95:
  esil_abs_neg (isa, opcode, format, i, slot_buffer, op);
  break;
 case 102:
 case 103:
  esil_set_shift_amount (isa, opcode, format, i, slot_buffer, op);
  break;
 case 111:
 case 113:
  esil_shift_logic_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 106:
  esil_set_shift_amount_imm (isa, opcode, format, i, slot_buffer, op);
  break;
 case 107:
 case 109:
  esil_shift_logic_sar (isa, opcode, format, i, slot_buffer, op);
  break;
 }
}
