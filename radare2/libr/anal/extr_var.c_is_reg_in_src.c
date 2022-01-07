
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* src; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 scalar_t__ STR_EQUAL (char const*,char const*) ;
 char* get_regname (int *,scalar_t__) ;

__attribute__((used)) static bool is_reg_in_src (const char *regname, RAnal *anal, RAnalOp *op) {
 const char* opsreg0 = op->src[0] ? get_regname (anal, op->src[0]) : ((void*)0);
 const char* opsreg1 = op->src[1] ? get_regname (anal, op->src[1]) : ((void*)0);
 const char* opsreg2 = op->src[2] ? get_regname (anal, op->src[2]) : ((void*)0);
 return (STR_EQUAL (regname, opsreg0)) || (STR_EQUAL (regname, opsreg1)) || (STR_EQUAL (regname, opsreg2));
}
