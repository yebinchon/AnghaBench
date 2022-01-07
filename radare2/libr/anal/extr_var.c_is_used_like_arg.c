
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* cur; } ;
struct TYPE_11__ {int type; TYPE_2__** src; TYPE_2__* dst; } ;
struct TYPE_10__ {int memref; } ;
struct TYPE_9__ {char const* arch; } ;
typedef TYPE_2__ RAnalValue ;
typedef TYPE_3__ RAnalOp ;
typedef TYPE_4__ RAnal ;


 int R_ANAL_OP_TYPE_ADD ;





 int R_ANAL_OP_TYPE_SUB ;

 int STR_EQUAL (char const*,char const*) ;
 int is_reg_in_src (char const*,TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static bool is_used_like_arg(const char *regname, const char *opsreg, const char *opdreg, RAnalOp *op, RAnal *anal) {

 RAnalValue *dst = op->dst;
 RAnalValue *src = op->src[0];
 switch (op->type) {
 case 129:
  return 0;
 case 130:
  return (is_reg_in_src (regname, anal, op)) || (opdreg && regname && !strcmp (opdreg, regname) && dst->memref);
 case 133:
  if (opdreg && regname && !strcmp (opdreg, regname)) {
   return 0;
  }
  if (is_reg_in_src (regname, anal, op)) {
   return 1;
  }
  return 0;
 case 132:
 case 131:
  if (is_reg_in_src (regname, anal, op)) {
   return 1;
  }
  if (opdreg && regname && !strcmp (opdreg, regname)) {
   return 0;
  }
      return 0;
 case 128:
  if (opsreg && opdreg && !strcmp (opsreg, opdreg) && !src->memref && !dst->memref) {
   return 0;
  }

 default:
  if ((op->type == R_ANAL_OP_TYPE_ADD || op->type == R_ANAL_OP_TYPE_SUB) && anal->cur->arch && "arm" && !strcmp (anal->cur->arch, "arm")) {
   if (opdreg && regname && !strcmp (opdreg, regname)) {
    return 0;
   }
   if (is_reg_in_src (regname, anal, op)) {
    return 1;
   }
  }
  return ((opdreg && regname && !strcmp (opdreg, regname)) || (is_reg_in_src (regname, anal, op)));
 }
}
