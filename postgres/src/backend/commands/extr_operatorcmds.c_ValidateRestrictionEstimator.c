
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ FLOAT8OID ;
 int GetUserId () ;
 int INT4OID ;
 int INTERNALOID ;
 int LookupFuncName (int *,int,int *,int) ;
 int NameListToString (int *) ;
 int OBJECT_FUNCTION ;
 int OIDOID ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char*) ;
 scalar_t__ get_func_rettype (int ) ;
 scalar_t__ pg_proc_aclcheck (int ,int ,int ) ;

__attribute__((used)) static Oid
ValidateRestrictionEstimator(List *restrictionName)
{
 Oid typeId[4];
 Oid restrictionOid;
 AclResult aclresult;

 typeId[0] = INTERNALOID;
 typeId[1] = OIDOID;
 typeId[2] = INTERNALOID;
 typeId[3] = INT4OID;

 restrictionOid = LookupFuncName(restrictionName, 4, typeId, 0);


 if (get_func_rettype(restrictionOid) != FLOAT8OID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("restriction estimator function %s must return type %s",
      NameListToString(restrictionName), "float8")));


 aclresult = pg_proc_aclcheck(restrictionOid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION,
        NameListToString(restrictionName));

 return restrictionOid;
}
