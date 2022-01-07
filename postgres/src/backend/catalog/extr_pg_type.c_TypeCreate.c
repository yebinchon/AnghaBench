
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_13__ {scalar_t__ typowner; scalar_t__ oid; scalar_t__ typisdefined; } ;
struct TYPE_12__ {int t_self; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef int NameData ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_type ;
typedef scalar_t__ Datum ;
typedef int Acl ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_type_oid ;
 int Anum_pg_type_typacl ;
 int Anum_pg_type_typalign ;
 int Anum_pg_type_typanalyze ;
 int Anum_pg_type_typarray ;
 int Anum_pg_type_typbasetype ;
 int Anum_pg_type_typbyval ;
 int Anum_pg_type_typcategory ;
 int Anum_pg_type_typcollation ;
 int Anum_pg_type_typdefault ;
 int Anum_pg_type_typdefaultbin ;
 int Anum_pg_type_typdelim ;
 int Anum_pg_type_typelem ;
 int Anum_pg_type_typinput ;
 int Anum_pg_type_typisdefined ;
 int Anum_pg_type_typispreferred ;
 int Anum_pg_type_typlen ;
 int Anum_pg_type_typmodin ;
 int Anum_pg_type_typmodout ;
 int Anum_pg_type_typname ;
 int Anum_pg_type_typnamespace ;
 int Anum_pg_type_typndims ;
 int Anum_pg_type_typnotnull ;
 int Anum_pg_type_typoutput ;
 int Anum_pg_type_typowner ;
 int Anum_pg_type_typreceive ;
 int Anum_pg_type_typrelid ;
 int Anum_pg_type_typsend ;
 int Anum_pg_type_typstorage ;
 int Anum_pg_type_typtype ;
 int Anum_pg_type_typtypmod ;
 scalar_t__ BoolGetDatum (int) ;
 int CStringGetDatum (char const*) ;
 scalar_t__ CStringGetTextDatum (char const*) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 scalar_t__ CharGetDatum (char) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GenerateTypeDependencies (scalar_t__,TYPE_2__*,int *,int *,char,int,int,int) ;
 scalar_t__ GetNewOidWithIndex (int ,int ,int) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 scalar_t__ Int16GetDatum (int) ;
 scalar_t__ Int32GetDatum (int ) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostCreateHook (int ,scalar_t__,int ) ;
 scalar_t__ IsBinaryUpgrade ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ NameGetDatum (int *) ;
 int Natts_pg_type ;
 int OBJECT_TYPE ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 scalar_t__ ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ PointerGetDatum (int *) ;
 char RELKIND_COMPOSITE_TYPE ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy2 (int ,int ,scalar_t__) ;
 int TYPENAMENSP ;
 int TypeOidIndexId ;
 int TypeRelationId ;
 int aclcheck_error (int ,int ,char const*) ;
 scalar_t__ binary_upgrade_next_pg_type_oid ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * get_user_default_acl (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* heap_form_tuple (int ,scalar_t__*,int*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,scalar_t__*,int*,int*) ;
 int namestrcpy (int *,char const*) ;
 int * stringToNode (char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
TypeCreate(Oid newTypeOid,
     const char *typeName,
     Oid typeNamespace,
     Oid relationOid,
     char relationKind,
     Oid ownerId,
     int16 internalSize,
     char typeType,
     char typeCategory,
     bool typePreferred,
     char typDelim,
     Oid inputProcedure,
     Oid outputProcedure,
     Oid receiveProcedure,
     Oid sendProcedure,
     Oid typmodinProcedure,
     Oid typmodoutProcedure,
     Oid analyzeProcedure,
     Oid elementType,
     bool isImplicitArray,
     Oid arrayType,
     Oid baseType,
     const char *defaultTypeValue,
     char *defaultTypeBin,
     bool passedByValue,
     char alignment,
     char storage,
     int32 typeMod,
     int32 typNDims,
     bool typeNotNull,
     Oid typeCollation)
{
 Relation pg_type_desc;
 Oid typeObjectId;
 bool isDependentType;
 bool rebuildDeps = 0;
 Acl *typacl;
 HeapTuple tup;
 bool nulls[Natts_pg_type];
 bool replaces[Natts_pg_type];
 Datum values[Natts_pg_type];
 NameData name;
 int i;
 ObjectAddress address;
 if (!(internalSize > 0 ||
    internalSize == -1 ||
    internalSize == -2))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("invalid type internal size %d",
      internalSize)));

 if (passedByValue)
 {






  if (internalSize == (int16) sizeof(char))
  {
   if (alignment != 'c')
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("alignment \"%c\" is invalid for passed-by-value type of size %d",
        alignment, internalSize)));
  }
  else if (internalSize == (int16) sizeof(int16))
  {
   if (alignment != 's')
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("alignment \"%c\" is invalid for passed-by-value type of size %d",
        alignment, internalSize)));
  }
  else if (internalSize == (int16) sizeof(int32))
  {
   if (alignment != 'i')
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
       errmsg("alignment \"%c\" is invalid for passed-by-value type of size %d",
        alignment, internalSize)));
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("internal size %d is invalid for passed-by-value type",
       internalSize)));
 }
 else
 {

  if (internalSize == -1 && !(alignment == 'i' || alignment == 'd'))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("alignment \"%c\" is invalid for variable-length type",
       alignment)));

  if (internalSize == -2 && !(alignment == 'c'))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("alignment \"%c\" is invalid for variable-length type",
       alignment)));
 }


 if (storage != 'p' && internalSize != -1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("fixed-size types must have storage PLAIN")));
 isDependentType = isImplicitArray ||
  (OidIsValid(relationOid) && relationKind != RELKIND_COMPOSITE_TYPE);




 for (i = 0; i < Natts_pg_type; ++i)
 {
  nulls[i] = 0;
  replaces[i] = 1;
  values[i] = (Datum) 0;
 }




 namestrcpy(&name, typeName);
 values[Anum_pg_type_typname - 1] = NameGetDatum(&name);
 values[Anum_pg_type_typnamespace - 1] = ObjectIdGetDatum(typeNamespace);
 values[Anum_pg_type_typowner - 1] = ObjectIdGetDatum(ownerId);
 values[Anum_pg_type_typlen - 1] = Int16GetDatum(internalSize);
 values[Anum_pg_type_typbyval - 1] = BoolGetDatum(passedByValue);
 values[Anum_pg_type_typtype - 1] = CharGetDatum(typeType);
 values[Anum_pg_type_typcategory - 1] = CharGetDatum(typeCategory);
 values[Anum_pg_type_typispreferred - 1] = BoolGetDatum(typePreferred);
 values[Anum_pg_type_typisdefined - 1] = BoolGetDatum(1);
 values[Anum_pg_type_typdelim - 1] = CharGetDatum(typDelim);
 values[Anum_pg_type_typrelid - 1] = ObjectIdGetDatum(relationOid);
 values[Anum_pg_type_typelem - 1] = ObjectIdGetDatum(elementType);
 values[Anum_pg_type_typarray - 1] = ObjectIdGetDatum(arrayType);
 values[Anum_pg_type_typinput - 1] = ObjectIdGetDatum(inputProcedure);
 values[Anum_pg_type_typoutput - 1] = ObjectIdGetDatum(outputProcedure);
 values[Anum_pg_type_typreceive - 1] = ObjectIdGetDatum(receiveProcedure);
 values[Anum_pg_type_typsend - 1] = ObjectIdGetDatum(sendProcedure);
 values[Anum_pg_type_typmodin - 1] = ObjectIdGetDatum(typmodinProcedure);
 values[Anum_pg_type_typmodout - 1] = ObjectIdGetDatum(typmodoutProcedure);
 values[Anum_pg_type_typanalyze - 1] = ObjectIdGetDatum(analyzeProcedure);
 values[Anum_pg_type_typalign - 1] = CharGetDatum(alignment);
 values[Anum_pg_type_typstorage - 1] = CharGetDatum(storage);
 values[Anum_pg_type_typnotnull - 1] = BoolGetDatum(typeNotNull);
 values[Anum_pg_type_typbasetype - 1] = ObjectIdGetDatum(baseType);
 values[Anum_pg_type_typtypmod - 1] = Int32GetDatum(typeMod);
 values[Anum_pg_type_typndims - 1] = Int32GetDatum(typNDims);
 values[Anum_pg_type_typcollation - 1] = ObjectIdGetDatum(typeCollation);





 if (defaultTypeBin)
  values[Anum_pg_type_typdefaultbin - 1] = CStringGetTextDatum(defaultTypeBin);
 else
  nulls[Anum_pg_type_typdefaultbin - 1] = 1;




 if (defaultTypeValue)
  values[Anum_pg_type_typdefault - 1] = CStringGetTextDatum(defaultTypeValue);
 else
  nulls[Anum_pg_type_typdefault - 1] = 1;




 if (isDependentType)
  typacl = ((void*)0);
 else
  typacl = get_user_default_acl(OBJECT_TYPE, ownerId,
           typeNamespace);
 if (typacl != ((void*)0))
  values[Anum_pg_type_typacl - 1] = PointerGetDatum(typacl);
 else
  nulls[Anum_pg_type_typacl - 1] = 1;







 pg_type_desc = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy2(TYPENAMENSP,
         CStringGetDatum(typeName),
         ObjectIdGetDatum(typeNamespace));
 if (HeapTupleIsValid(tup))
 {
  Form_pg_type typform = (Form_pg_type) GETSTRUCT(tup);





  if (typform->typisdefined)
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("type \"%s\" already exists", typeName)));




  if (typform->typowner != ownerId)
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_TYPE, typeName);


  if (OidIsValid(newTypeOid))
   elog(ERROR, "cannot assign new OID to existing shell type");

  replaces[Anum_pg_type_oid - 1] = 0;




  tup = heap_modify_tuple(tup,
        RelationGetDescr(pg_type_desc),
        values,
        nulls,
        replaces);

  CatalogTupleUpdate(pg_type_desc, &tup->t_self, tup);

  typeObjectId = typform->oid;

  rebuildDeps = 1;
 }
 else
 {

  if (OidIsValid(newTypeOid))
   typeObjectId = newTypeOid;

  else if (IsBinaryUpgrade)
  {
   if (!OidIsValid(binary_upgrade_next_pg_type_oid))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("pg_type OID value not set when in binary upgrade mode")));

   typeObjectId = binary_upgrade_next_pg_type_oid;
   binary_upgrade_next_pg_type_oid = InvalidOid;
  }
  else
  {
   typeObjectId = GetNewOidWithIndex(pg_type_desc, TypeOidIndexId,
             Anum_pg_type_oid);
  }

  values[Anum_pg_type_oid - 1] = ObjectIdGetDatum(typeObjectId);

  tup = heap_form_tuple(RelationGetDescr(pg_type_desc),
         values, nulls);

  CatalogTupleInsert(pg_type_desc, tup);
 }




 if (!IsBootstrapProcessingMode())
  GenerateTypeDependencies(typeObjectId,
         (Form_pg_type) GETSTRUCT(tup),
         (defaultTypeBin ?
          stringToNode(defaultTypeBin) :
          ((void*)0)),
         typacl,
         relationKind,
         isImplicitArray,
         isDependentType,
         rebuildDeps);


 InvokeObjectPostCreateHook(TypeRelationId, typeObjectId, 0);

 ObjectAddressSet(address, TypeRelationId, typeObjectId);




 table_close(pg_type_desc, RowExclusiveLock);

 return address;
}
