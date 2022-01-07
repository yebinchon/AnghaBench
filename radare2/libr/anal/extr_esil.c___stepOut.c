
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; scalar_t__ (* cmd ) (TYPE_1__*,char const*,int ,int ) ;} ;
typedef TYPE_1__ RAnalEsil ;


 scalar_t__ stub1 (TYPE_1__*,char const*,int ,int ) ;

__attribute__((used)) static bool __stepOut(RAnalEsil *esil, const char *cmd) {
 static bool inCmdStep = 0;
 if (cmd && esil && esil->cmd && !inCmdStep) {
  inCmdStep = 1;
  if (esil->cmd (esil, cmd, esil->address, 0)) {
   inCmdStep = 0;

   return 1;
  }
  inCmdStep = 0;
 }
 return 0;
}
