
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef scalar_t__ CoercionPathType ;


 int COERCION_IMPLICIT ;
 scalar_t__ COERCION_PATH_NONE ;
 scalar_t__ COERCION_PATH_RELABELTYPE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int elog (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ find_coercion_pathway (scalar_t__,scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static CoercionPathType
findFkeyCast(Oid targetTypeId, Oid sourceTypeId, Oid *funcid)
{
 CoercionPathType ret;

 if (targetTypeId == sourceTypeId)
 {
  ret = COERCION_PATH_RELABELTYPE;
  *funcid = InvalidOid;
 }
 else
 {
  ret = find_coercion_pathway(targetTypeId, sourceTypeId,
         COERCION_IMPLICIT, funcid);
  if (ret == COERCION_PATH_NONE)

   elog(ERROR, "could not find cast from %u to %u",
     sourceTypeId, targetTypeId);
 }

 return ret;
}
