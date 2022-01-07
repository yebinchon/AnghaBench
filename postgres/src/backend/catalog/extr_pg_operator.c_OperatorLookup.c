
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RegProcedure ;
typedef int Oid ;
typedef int List ;


 int InvalidOid ;
 int LookupOperName (int *,int *,int ,int ,int,int) ;
 int OidIsValid (int ) ;
 int RegProcedureIsValid (int ) ;
 int get_opcode (int ) ;

__attribute__((used)) static Oid
OperatorLookup(List *operatorName,
      Oid leftObjectId,
      Oid rightObjectId,
      bool *defined)
{
 Oid operatorObjectId;
 RegProcedure oprcode;

 operatorObjectId = LookupOperName(((void*)0), operatorName,
           leftObjectId, rightObjectId,
           1, -1);
 if (!OidIsValid(operatorObjectId))
 {
  *defined = 0;
  return InvalidOid;
 }

 oprcode = get_opcode(operatorObjectId);
 *defined = RegProcedureIsValid(oprcode);

 return operatorObjectId;
}
