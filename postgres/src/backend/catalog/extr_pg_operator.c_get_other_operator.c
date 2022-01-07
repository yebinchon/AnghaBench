
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ InvalidOid ;
 int OBJECT_SCHEMA ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ OperatorLookup (int *,scalar_t__,scalar_t__,int*) ;
 scalar_t__ OperatorShellMake (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ QualifiedNameGetCreationNamespace (int *,char**) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_namespace_name (scalar_t__) ;
 scalar_t__ pg_namespace_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static Oid
get_other_operator(List *otherOp, Oid otherLeftTypeId, Oid otherRightTypeId,
       const char *operatorName, Oid operatorNamespace,
       Oid leftTypeId, Oid rightTypeId, bool isCommutator)
{
 Oid other_oid;
 bool otherDefined;
 char *otherName;
 Oid otherNamespace;
 AclResult aclresult;

 other_oid = OperatorLookup(otherOp,
          otherLeftTypeId,
          otherRightTypeId,
          &otherDefined);

 if (OidIsValid(other_oid))
 {

  return other_oid;
 }

 otherNamespace = QualifiedNameGetCreationNamespace(otherOp,
                &otherName);

 if (strcmp(otherName, operatorName) == 0 &&
  otherNamespace == operatorNamespace &&
  otherLeftTypeId == leftTypeId &&
  otherRightTypeId == rightTypeId)
 {




  if (!isCommutator)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("operator cannot be its own negator or sort operator")));
  return InvalidOid;
 }



 aclresult = pg_namespace_aclcheck(otherNamespace, GetUserId(),
           ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        get_namespace_name(otherNamespace));

 other_oid = OperatorShellMake(otherName,
          otherNamespace,
          otherLeftTypeId,
          otherRightTypeId);
 return other_oid;
}
