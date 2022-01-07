
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ typmods; int setof; int names; } ;
typedef TYPE_1__ TypeName ;
typedef scalar_t__ Type ;
struct TYPE_10__ {int typisdefined; } ;
struct TYPE_9__ {scalar_t__ objectId; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef TYPE_3__* Form_pg_type ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int ACL_USAGE ;
 int Assert (int ) ;
 scalar_t__ ClanguageId ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (scalar_t__) ;
 int GetUserId () ;
 scalar_t__ INTERNALlanguageId ;
 scalar_t__ LookupTypeName (int *,TYPE_1__*,int *,int) ;
 scalar_t__ NIL ;
 int NOTICE ;
 int OBJECT_SCHEMA ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ QualifiedNameGetCreationNamespace (int ,char**) ;
 int ReleaseSysCache (scalar_t__) ;
 scalar_t__ SQLlanguageId ;
 char* TypeNameToString (TYPE_1__*) ;
 TYPE_2__ TypeShellMake (char*,scalar_t__,int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int aclcheck_error_type (scalar_t__,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char*) ;
 int get_namespace_name (scalar_t__) ;
 scalar_t__ pg_namespace_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ pg_type_aclcheck (scalar_t__,int ,int ) ;
 scalar_t__ typeTypeId (scalar_t__) ;

__attribute__((used)) static void
compute_return_type(TypeName *returnType, Oid languageOid,
     Oid *prorettype_p, bool *returnsSet_p)
{
 Oid rettype;
 Type typtup;
 AclResult aclresult;

 typtup = LookupTypeName(((void*)0), returnType, ((void*)0), 0);

 if (typtup)
 {
  if (!((Form_pg_type) GETSTRUCT(typtup))->typisdefined)
  {
   if (languageOid == SQLlanguageId)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
       errmsg("SQL function cannot return shell type %s",
        TypeNameToString(returnType))));
   else
    ereport(NOTICE,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("return type %s is only a shell",
        TypeNameToString(returnType))));
  }
  rettype = typeTypeId(typtup);
  ReleaseSysCache(typtup);
 }
 else
 {
  char *typnam = TypeNameToString(returnType);
  Oid namespaceId;
  AclResult aclresult;
  char *typname;
  ObjectAddress address;







  if (languageOid != INTERNALlanguageId &&
   languageOid != ClanguageId)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" does not exist", typnam)));


  if (returnType->typmods != NIL)
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("type modifier cannot be specified for shell type \"%s\"",
       typnam)));


  ereport(NOTICE,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" is not yet defined", typnam),
     errdetail("Creating a shell type definition.")));
  namespaceId = QualifiedNameGetCreationNamespace(returnType->names,
              &typname);
  aclresult = pg_namespace_aclcheck(namespaceId, GetUserId(),
            ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_SCHEMA,
         get_namespace_name(namespaceId));
  address = TypeShellMake(typname, namespaceId, GetUserId());
  rettype = address.objectId;
  Assert(OidIsValid(rettype));
 }

 aclresult = pg_type_aclcheck(rettype, GetUserId(), ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error_type(aclresult, rettype);

 *prorettype_p = rettype;
 *returnsSet_p = returnType->setof;
}
