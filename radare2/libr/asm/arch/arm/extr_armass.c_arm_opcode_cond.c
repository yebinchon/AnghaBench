
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* op; int o; } ;
typedef TYPE_1__ ArmOpcode ;


 int strcmpnull (char*,char const*) ;

__attribute__((used)) static inline int arm_opcode_cond(ArmOpcode *ao, int delta) {
 const char *conds[] = {
  "eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
  "hi", "ls", "ge", "lt", "gt", "le", "al", "nv", 0
 };
 int i, cond = 14;
 char *c = ao->op+delta;
 for (i=0; conds[i]; i++) {
  if (!strcmpnull (c, conds[i])) {
   cond = i;
   break;
  }
 }
 ao->o |= cond << 4;
 return cond;
}
