
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_6__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int NameData ;
typedef int HeapTuple ;
typedef int Form_pg_type ;
typedef scalar_t__ Datum ;


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
 int Assert (int ) ;
 scalar_t__ BoolGetDatum (int) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 scalar_t__ CharGetDatum (char) ;
 char DEFAULT_TYPDELIM ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int F_SHELL_IN ;
 int F_SHELL_OUT ;
 scalar_t__ GETSTRUCT (int ) ;
 int GenerateTypeDependencies (int ,int ,int *,int *,int ,int,int,int) ;
 int GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 scalar_t__ Int16GetDatum (int) ;
 scalar_t__ Int32GetDatum (int) ;
 int InvalidOid ;
 int InvokeObjectPostCreateHook (int ,int ,int ) ;
 scalar_t__ IsBinaryUpgrade ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ NameGetDatum (int *) ;
 int Natts_pg_type ;
 int ObjectAddressSet (int ,int ,int ) ;
 scalar_t__ ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PointerIsValid (char const*) ;
 int RowExclusiveLock ;
 char TYPCATEGORY_PSEUDOTYPE ;
 char TYPTYPE_PSEUDO ;
 int TypeOidIndexId ;
 int TypeRelationId ;
 int binary_upgrade_next_pg_type_oid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int heap_freetuple (int ) ;
 int namestrcpy (int *,char const*) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

ObjectAddress
TypeShellMake(const char *typeName, Oid typeNamespace, Oid ownerId)
{
 Relation pg_type_desc;
 TupleDesc tupDesc;
 int i;
 HeapTuple tup;
 Datum values[Natts_pg_type];
 bool nulls[Natts_pg_type];
 Oid typoid;
 NameData name;
 ObjectAddress address;

 Assert(PointerIsValid(typeName));




 pg_type_desc = table_open(TypeRelationId, RowExclusiveLock);
 tupDesc = pg_type_desc->rd_att;




 for (i = 0; i < Natts_pg_type; ++i)
 {
  nulls[i] = 0;
  values[i] = (Datum) ((void*)0);
 }
 namestrcpy(&name, typeName);
 values[Anum_pg_type_typname - 1] = NameGetDatum(&name);
 values[Anum_pg_type_typnamespace - 1] = ObjectIdGetDatum(typeNamespace);
 values[Anum_pg_type_typowner - 1] = ObjectIdGetDatum(ownerId);
 values[Anum_pg_type_typlen - 1] = Int16GetDatum(sizeof(int32));
 values[Anum_pg_type_typbyval - 1] = BoolGetDatum(1);
 values[Anum_pg_type_typtype - 1] = CharGetDatum(TYPTYPE_PSEUDO);
 values[Anum_pg_type_typcategory - 1] = CharGetDatum(TYPCATEGORY_PSEUDOTYPE);
 values[Anum_pg_type_typispreferred - 1] = BoolGetDatum(0);
 values[Anum_pg_type_typisdefined - 1] = BoolGetDatum(0);
 values[Anum_pg_type_typdelim - 1] = CharGetDatum(DEFAULT_TYPDELIM);
 values[Anum_pg_type_typrelid - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typelem - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typarray - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typinput - 1] = ObjectIdGetDatum(F_SHELL_IN);
 values[Anum_pg_type_typoutput - 1] = ObjectIdGetDatum(F_SHELL_OUT);
 values[Anum_pg_type_typreceive - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typsend - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typmodin - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typmodout - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typanalyze - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typalign - 1] = CharGetDatum('i');
 values[Anum_pg_type_typstorage - 1] = CharGetDatum('p');
 values[Anum_pg_type_typnotnull - 1] = BoolGetDatum(0);
 values[Anum_pg_type_typbasetype - 1] = ObjectIdGetDatum(InvalidOid);
 values[Anum_pg_type_typtypmod - 1] = Int32GetDatum(-1);
 values[Anum_pg_type_typndims - 1] = Int32GetDatum(0);
 values[Anum_pg_type_typcollation - 1] = ObjectIdGetDatum(InvalidOid);
 nulls[Anum_pg_type_typdefaultbin - 1] = 1;
 nulls[Anum_pg_type_typdefault - 1] = 1;
 nulls[Anum_pg_type_typacl - 1] = 1;


 if (IsBinaryUpgrade)
 {
  if (!OidIsValid(binary_upgrade_next_pg_type_oid))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("pg_type OID value not set when in binary upgrade mode")));

  typoid = binary_upgrade_next_pg_type_oid;
  binary_upgrade_next_pg_type_oid = InvalidOid;
 }
 else
 {
  typoid = GetNewOidWithIndex(pg_type_desc, TypeOidIndexId,
         Anum_pg_type_oid);
 }

 values[Anum_pg_type_oid - 1] = ObjectIdGetDatum(typoid);




 tup = heap_form_tuple(tupDesc, values, nulls);




 CatalogTupleInsert(pg_type_desc, tup);




 if (!IsBootstrapProcessingMode())
  GenerateTypeDependencies(typoid,
         (Form_pg_type) GETSTRUCT(tup),
         ((void*)0),
         ((void*)0),
         0,
         0,
         0,
         0);


 InvokeObjectPostCreateHook(TypeRelationId, typoid, 0);

 ObjectAddressSet(address, TypeRelationId, typoid);




 heap_freetuple(tup);
 table_close(pg_type_desc, RowExclusiveLock);

 return address;
}
