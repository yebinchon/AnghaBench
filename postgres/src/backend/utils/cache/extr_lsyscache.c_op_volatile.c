
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RegProcedure ;
typedef int Oid ;


 int ERROR ;
 scalar_t__ InvalidOid ;
 int elog (int ,char*,int ) ;
 char func_volatile (int ) ;
 scalar_t__ get_opcode (int ) ;

char
op_volatile(Oid opno)
{
 RegProcedure funcid = get_opcode(opno);

 if (funcid == (RegProcedure) InvalidOid)
  elog(ERROR, "operator %u does not exist", opno);

 return func_volatile((Oid) funcid);
}
