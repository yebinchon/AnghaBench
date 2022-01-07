
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opfuncid; int opno; } ;
typedef TYPE_1__ OpExpr ;


 scalar_t__ InvalidOid ;
 scalar_t__ get_opcode (int ) ;

void
set_opfuncid(OpExpr *opexpr)
{
 if (opexpr->opfuncid == InvalidOid)
  opexpr->opfuncid = get_opcode(opexpr->opno);
}
