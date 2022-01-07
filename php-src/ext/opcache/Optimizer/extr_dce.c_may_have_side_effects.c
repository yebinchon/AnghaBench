
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
struct TYPE_14__ {size_t op1_def; size_t op2_use; int op1_use; } ;
typedef TYPE_3__ zend_ssa_op ;
struct TYPE_15__ {TYPE_1__* vars; } ;
typedef TYPE_4__ zend_ssa ;
struct TYPE_16__ {TYPE_2__* static_variables; } ;
typedef TYPE_5__ zend_op_array ;
struct TYPE_17__ {int opcode; int extended_value; int op1_type; int op2_type; } ;
typedef TYPE_6__ zend_op ;
typedef int zend_bool ;
typedef int uint32_t ;
struct TYPE_13__ {scalar_t__ arData; } ;
struct TYPE_12__ {int escape_state; } ;


 int ESCAPE_STATE_NO_ESCAPE ;
 int IS_CONST ;
 int IS_CONSTANT_AST ;
 int MAY_BE_REF ;
 int MAY_BE_UNDEF ;
 int MAY_HAVE_DTOR ;
 int OP1_INFO () ;
 int OP2_INFO () ;
 int ZEND_BIND_REF ;
 int Z_TYPE_P (int *) ;
 int is_bad_mod (TYPE_4__*,int ,size_t) ;

__attribute__((used)) static inline zend_bool may_have_side_effects(
  zend_op_array *op_array, zend_ssa *ssa,
  const zend_op *opline, const zend_ssa_op *ssa_op,
  zend_bool reorder_dtor_effects) {
 switch (opline->opcode) {
  case 155:
  case 169:
  case 167:
  case 145:
  case 181:
  case 132:
  case 196:
  case 219:
  case 135:
  case 156:
  case 150:
  case 204:
  case 206:
  case 203:
  case 198:
  case 184:
  case 195:
  case 157:
  case 207:
  case 209:
  case 208:
  case 205:
  case 139:
  case 137:
  case 170:
  case 168:
  case 166:
  case 165:
  case 202:
  case 201:
  case 140:
  case 142:
  case 176:
  case 218:
  case 138:
  case 136:
  case 197:
  case 178:
  case 172:
  case 173:
  case 183:
  case 174:
  case 171:
  case 182:
  case 175:
  case 179:
  case 180:

   return 0;
  case 141:

   return 1;
  case 164:
  case 161:
  case 163:
  case 160:
  case 159:
  case 162:
  case 158:
  case 199:
  case 217:

   return 1;
  case 211:
  case 189:
  case 190:
  case 177:
  case 134:
  case 185:
  case 188:
  case 187:
  case 186:
  case 133:
  case 129:
  case 128:

   return 1;
  case 194:
  case 193:
  case 192:
  case 191:

   return 1;
  case 144:
  case 143:


   return 1;
  case 212:
   return 1;
  case 216:
  {
   if (is_bad_mod(ssa, ssa_op->op1_use, ssa_op->op1_def)) {
    return 1;
   }
   if (!reorder_dtor_effects) {
    if (opline->op2_type != IS_CONST
     && (OP2_INFO() & MAY_HAVE_DTOR)
     && ssa->vars[ssa_op->op2_use].escape_state != ESCAPE_STATE_NO_ESCAPE) {

     return 1;
    }
   }
   return 0;
  }
  case 130:
   return 1;
  case 131:
  {
   uint32_t t1 = OP1_INFO();
   if (t1 & MAY_BE_REF) {




    return 1;
   }
   return 0;
  }
  case 147:
  case 152:
  case 149:
  case 154:
   return is_bad_mod(ssa, ssa_op->op1_use, ssa_op->op1_def);
  case 213:
   return is_bad_mod(ssa, ssa_op->op1_use, ssa_op->op1_def)
    || ssa->vars[ssa_op->op1_def].escape_state != ESCAPE_STATE_NO_ESCAPE;
  case 215:
  case 214:
   if (is_bad_mod(ssa, ssa_op->op1_use, ssa_op->op1_def)
    || ssa->vars[ssa_op->op1_def].escape_state != ESCAPE_STATE_NO_ESCAPE) {
    return 1;
   }
   if (!reorder_dtor_effects) {
    opline++;
    ssa_op++;
    if (opline->op1_type != IS_CONST
     && (OP1_INFO() & MAY_HAVE_DTOR)) {

     return 1;
    }
   }
   return 0;
  case 146:
  case 148:
  case 151:
  case 153:
   if (is_bad_mod(ssa, ssa_op->op1_use, ssa_op->op1_def)
    || ssa->vars[ssa_op->op1_def].escape_state != ESCAPE_STATE_NO_ESCAPE) {
    return 1;
   }
   return 0;
  case 210:
   if (op_array->static_variables
    && (opline->extended_value & ZEND_BIND_REF) != 0) {
    zval *value =
     (zval*)((char*)op_array->static_variables->arData +
      (opline->extended_value & ~ZEND_BIND_REF));
    if (Z_TYPE_P(value) == IS_CONSTANT_AST) {

     return 1;
    }
   }
   return 0;
  case 200:
   return (OP1_INFO() & MAY_BE_UNDEF) != 0;
  default:

   return 1;
 }
}
