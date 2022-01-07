
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vals; int typeName; } ;
struct TYPE_6__ {int objectId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ CreateEnumStmt ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int Anum_pg_type_oid ;
 int AssignTypeArrayOid () ;
 int CStringGetDatum (char*) ;
 int DEFAULT_TYPDELIM ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int EnumValuesCreate (int ,int ) ;
 int F_ARRAY_IN ;
 int F_ARRAY_OUT ;
 int F_ARRAY_RECV ;
 int F_ARRAY_SEND ;
 int F_ARRAY_TYPANALYZE ;
 int F_ENUM_IN ;
 int F_ENUM_OUT ;
 int F_ENUM_RECV ;
 int F_ENUM_SEND ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int GetUserId () ;
 int InvalidOid ;
 int OBJECT_SCHEMA ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int QualifiedNameGetCreationNamespace (int ,char**) ;
 int TYPCATEGORY_ARRAY ;
 int TYPCATEGORY_ENUM ;
 int TYPENAMENSP ;
 int TYPTYPE_BASE ;
 int TYPTYPE_ENUM ;
 TYPE_1__ TypeCreate (int ,char*,int ,int ,int ,int ,int,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int *,int *,int,char,char,int,int ,int,int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_namespace_name (int ) ;
 char* makeArrayTypeName (char*,int ) ;
 int moveArrayTypeName (int ,char*,int ) ;
 int pfree (char*) ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;

ObjectAddress
DefineEnum(CreateEnumStmt *stmt)
{
 char *enumName;
 char *enumArrayName;
 Oid enumNamespace;
 AclResult aclresult;
 Oid old_type_oid;
 Oid enumArrayOid;
 ObjectAddress enumTypeAddr;


 enumNamespace = QualifiedNameGetCreationNamespace(stmt->typeName,
               &enumName);


 aclresult = pg_namespace_aclcheck(enumNamespace, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        get_namespace_name(enumNamespace));





 old_type_oid = GetSysCacheOid2(TYPENAMENSP, Anum_pg_type_oid,
           CStringGetDatum(enumName),
           ObjectIdGetDatum(enumNamespace));
 if (OidIsValid(old_type_oid))
 {
  if (!moveArrayTypeName(old_type_oid, enumName, enumNamespace))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("type \"%s\" already exists", enumName)));
 }


 enumArrayOid = AssignTypeArrayOid();


 enumTypeAddr =
  TypeCreate(InvalidOid,
       enumName,
       enumNamespace,
       InvalidOid,
       0,
       GetUserId(),
       sizeof(Oid),
       TYPTYPE_ENUM,
       TYPCATEGORY_ENUM,
       0,
       DEFAULT_TYPDELIM,
       F_ENUM_IN,
       F_ENUM_OUT,
       F_ENUM_RECV,
       F_ENUM_SEND,
       InvalidOid,
       InvalidOid,
       InvalidOid,
       InvalidOid,
       0,
       enumArrayOid,
       InvalidOid,
       ((void*)0),
       ((void*)0),
       1,
       'i',
       'p',
       -1,
       0,
       0,
       InvalidOid);


 EnumValuesCreate(enumTypeAddr.objectId, stmt->vals);




 enumArrayName = makeArrayTypeName(enumName, enumNamespace);

 TypeCreate(enumArrayOid,
      enumArrayName,
      enumNamespace,
      InvalidOid,
      0,
      GetUserId(),
      -1,
      TYPTYPE_BASE,
      TYPCATEGORY_ARRAY,
      0,
      DEFAULT_TYPDELIM,
      F_ARRAY_IN,
      F_ARRAY_OUT,
      F_ARRAY_RECV,
      F_ARRAY_SEND,
      InvalidOid,
      InvalidOid,
      F_ARRAY_TYPANALYZE,
      enumTypeAddr.objectId,
      1,
      InvalidOid,
      InvalidOid,
      ((void*)0),
      ((void*)0),
      0,
      'i',
      'x',
      -1,
      0,
      0,
      InvalidOid);

 pfree(enumArrayName);

 return enumTypeAddr;
}
