
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* mnemonic; TYPE_1__* operands; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ ArmOp ;


 int ARM_NOTYPE ;
 int parseOperands (char*,TYPE_2__*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static bool parseOpcode(const char *str, ArmOp *op) {
 char *in = strdup (str);
 char *space = strchr (in, ' ');
 if (!space) {
  op->operands[0].type = ARM_NOTYPE;
  op->mnemonic = in;
   return 1;
 }
 space[0] = '\0';
 op->mnemonic = in;
 space ++;
 return parseOperands (space, op);
}
