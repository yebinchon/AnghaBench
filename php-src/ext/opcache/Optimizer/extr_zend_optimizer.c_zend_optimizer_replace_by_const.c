
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_uchar ;
struct TYPE_16__ {int last; int fn_flags; int arg_info; TYPE_4__* opcodes; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_15__ {scalar_t__ var; } ;
struct TYPE_14__ {scalar_t__ var; void* constant; } ;
struct TYPE_17__ {scalar_t__ op1_type; int opcode; scalar_t__ op2_type; TYPE_2__ op2; TYPE_1__ op1; int extended_value; } ;
typedef TYPE_4__ zend_op ;
struct TYPE_18__ {int type; } ;
typedef TYPE_5__ zend_arg_info ;
typedef scalar_t__ uint32_t ;


 void* IS_CONST ;
 int IS_STRING ;
 int MAKE_NOP (TYPE_4__*) ;
 int ZEND_ACC_RETURN_REFERENCE ;
 int ZEND_ASSERT (int) ;
 int ZEND_FREE ;
 int ZEND_FREE_ON_RETURN ;
 int ZEND_FREE_SWITCH ;
 int const ZEND_IS_EQUAL ;
 int ZEND_RETURN ;



 void* ZEND_SEND_VAL ;
 void* ZEND_SEND_VAL_EX ;







 int ZEND_TYPE_CONTAINS_CODE (int ,int ) ;

 int ZVAL_COPY (int *,int *) ;
 int Z_STR (int ) ;
 int Z_TYPE (int ) ;
 int Z_TYPE_P (int *) ;
 void* zend_optimizer_add_literal (TYPE_3__*,int *) ;
 int zend_optimizer_update_op1_const (TYPE_3__*,TYPE_4__*,int *) ;
 int zend_optimizer_update_op2_const (TYPE_3__*,TYPE_4__*,int *) ;
 int zend_string_hash_val (int ) ;
 int zval_ptr_dtor_nogc (int *) ;

int zend_optimizer_replace_by_const(zend_op_array *op_array,
                                    zend_op *opline,
                                    zend_uchar type,
                                    uint32_t var,
                                    zval *val)
{
 zend_op *end = op_array->opcodes + op_array->last;

 while (opline < end) {
  if (opline->op1_type == type &&
   opline->op1.var == var) {
   switch (opline->opcode) {
    case 141:
    case 143:
    case 144:
    case 142:
    case 139:
    case 146:
    case 131:
    case 138:
     return 0;
    case 135:
     opline->extended_value = 0;
     opline->opcode = ZEND_SEND_VAL;
     break;
    case 134:
    case 137:
     opline->extended_value = 0;
     opline->opcode = ZEND_SEND_VAL_EX;
     break;
    case 133:
     return 0;
    case 132:
     opline->opcode = ZEND_SEND_VAL;
     break;
    case 136:
     opline->opcode = ZEND_SEND_VAL_EX;
     break;






    case 140: {
     zend_op *m = opline;

     do {
      if (m->opcode == 140 &&
       m->op1_type == type &&
       m->op1.var == var) {
       zval v;
       ZVAL_COPY(&v, val);
       if (Z_TYPE(v) == IS_STRING) {
        zend_string_hash_val(Z_STR(v));
       }
       m->op1.constant = zend_optimizer_add_literal(op_array, &v);
       m->op1_type = IS_CONST;
      }
      m++;
     } while (m->opcode != ZEND_FREE || m->op1_type != type || m->op1.var != var);

     ZEND_ASSERT(m->opcode == ZEND_FREE && m->op1_type == type && m->op1.var == var);
     MAKE_NOP(m);
     zval_ptr_dtor_nogc(val);
     return 1;
    }
    case 130:
    case 129:
    case 145: {
     zend_op *end = op_array->opcodes + op_array->last;
     while (opline < end) {
      if (opline->op1_type == type && opline->op1.var == var) {
       if (opline->opcode == 145
         || opline->opcode == 130
         || opline->opcode == 129) {
        zval v;

        if (opline->opcode == 145) {
         opline->opcode = ZEND_IS_EQUAL;
        }
        ZVAL_COPY(&v, val);
        if (Z_TYPE(v) == IS_STRING) {
         zend_string_hash_val(Z_STR(v));
        }
        opline->op1.constant = zend_optimizer_add_literal(op_array, &v);
        opline->op1_type = IS_CONST;
       } else if (opline->opcode == ZEND_FREE) {
        if (opline->extended_value == ZEND_FREE_SWITCH) {

         MAKE_NOP(opline);
         break;
        }

        ZEND_ASSERT(opline->extended_value == ZEND_FREE_ON_RETURN);
        MAKE_NOP(opline);
       } else {
        ZEND_ASSERT(0);
       }
      }
      opline++;
     }
     zval_ptr_dtor_nogc(val);
     return 1;
    }
    case 128: {
     zend_arg_info *ret_info = op_array->arg_info - 1;
     if (!ZEND_TYPE_CONTAINS_CODE(ret_info->type, Z_TYPE_P(val))
      || (op_array->fn_flags & ZEND_ACC_RETURN_REFERENCE)) {
      return 0;
     }
     MAKE_NOP(opline);


     do {
      ++opline;
     } while (opline->opcode != ZEND_RETURN && opline->opcode != 138);
     ZEND_ASSERT(opline->op1.var == var);

     break;
      }
    default:
     break;
   }
   return zend_optimizer_update_op1_const(op_array, opline, val);
  }

  if (opline->op2_type == type &&
   opline->op2.var == var) {
   return zend_optimizer_update_op2_const(op_array, opline, val);
  }
  opline++;
 }

 return 1;
}
