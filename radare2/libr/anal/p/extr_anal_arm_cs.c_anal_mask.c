
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;
struct TYPE_12__ {int bits; int big_endian; } ;
struct TYPE_11__ {scalar_t__ bits; scalar_t__ ptr; scalar_t__ jump; int type; int id; } ;
typedef TYPE_1__ RAnalOp ;
typedef TYPE_1__ RAnalHint ;
typedef TYPE_3__ RAnal ;
 int R_ANAL_OP_MASK_BASIC ;
 int R_ANAL_OP_TYPE_CJMP ;
 scalar_t__ UT64_MAX ;
 int analop (TYPE_3__*,TYPE_1__*,scalar_t__,int const*,int,int ) ;
 int free (TYPE_1__*) ;
 int * malloc (int) ;
 int memcpy (int *,char*,int) ;
 int memset (int *,int,int) ;
 TYPE_1__* r_anal_hint_get (TYPE_3__*,scalar_t__) ;
 TYPE_1__* r_anal_op_new () ;
 int r_read_ble (int const*,int ,int) ;
 int r_write_ble (int *,int,int ,int) ;

__attribute__((used)) static ut8 *anal_mask(RAnal *anal, int size, const ut8 *data, ut64 at) {
 RAnalOp *op = ((void*)0);
 ut8 *ret = ((void*)0);
 int oplen, idx = 0, obits = anal->bits;
 RAnalHint *hint = ((void*)0);

 if (!data) {
  return ((void*)0);
 }

 op = r_anal_op_new ();
 ret = malloc (size);
 memset (ret, 0xff, size);

 while (idx < size) {
  hint = r_anal_hint_get (anal, at + idx);
  if (hint) {
   if (hint->bits != 0) {
    anal->bits = hint->bits;
   }
   free (hint);
  }

  if ((oplen = analop (anal, op, at + idx, data + idx, size - idx, R_ANAL_OP_MASK_BASIC)) < 1) {
   break;
  }
  if (op->ptr != UT64_MAX || op->jump != UT64_MAX) {
   ut32 opcode = r_read_ble (data + idx, anal->big_endian, oplen * 8);
   switch (oplen) {
   case 2:
    memcpy (ret + idx, "\xf0\x00", 2);
    break;
   case 4:
    if (anal->bits == 64) {
     switch (op->id) {
     case 167:
     case 147:
     case 146:
     case 145:
     case 144:
     case 166:
     case 168:
     case 159:
     case 158:
     case 157:
     case 156:
     case 155:
     case 154:
     case 153:
     case 152:
     case 151:
     case 150:
     case 149:
     case 148:
     case 142:
     case 143:
     case 132:
     case 131:
     case 130:
      r_write_ble (ret + idx, 0xffffffff, anal->big_endian, 32);
      break;
     case 140:
     case 134:
     case 133:
     case 135:
     case 141:
     case 138:
     case 137:
     case 139:
     case 136:
     case 165:
     case 164:
     case 163:
     case 162:
     case 160:
     case 161: {
      bool is_literal = (opcode & 0x38000000) == 0x18000000;
      if (is_literal) {
       r_write_ble (ret + idx, 0xff000000, anal->big_endian, 32);
      } else {
       r_write_ble (ret + idx, 0xffffffff, anal->big_endian, 32);
      }
      break;
     }
     case 172:
     case 171:
     case 169:
     case 170:
      if (op->type == R_ANAL_OP_TYPE_CJMP) {
       r_write_ble (ret + idx, 0xff00001f, anal->big_endian, 32);
      } else {
       r_write_ble (ret + idx, 0xfc000000, anal->big_endian, 32);
      }
      break;
     case 128:
     case 129:
      r_write_ble (ret + idx, 0xfff8001f, anal->big_endian, 32);
      break;
     case 174:
     case 173:
      r_write_ble (ret + idx, 0xff00001f, anal->big_endian, 32);
      break;
     default:
      r_write_ble (ret + idx, 0xfff00000, anal->big_endian, 32);
     }
    } else {
     r_write_ble (ret + idx, 0xfff00000, anal->big_endian, 32);
    }
    break;
   }
  }
  idx += oplen;
 }

 anal->bits = obits;
 free (op);

 return ret;
}
