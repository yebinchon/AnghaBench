
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {scalar_t__ relkind; int relnatts; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;
typedef int AttrNumber ;


 int ATTNUM ;
 scalar_t__ AccessMethodRelationId ;
 scalar_t__ AggregateRelationId ;
 int Anum_pg_attribute_attacl ;
 int Anum_pg_class_relacl ;
 int Anum_pg_foreign_data_wrapper_fdwacl ;
 int Anum_pg_foreign_server_srvacl ;
 int Anum_pg_language_lanacl ;
 int Anum_pg_largeobject_metadata_lomacl ;
 int Anum_pg_largeobject_metadata_oid ;
 int Anum_pg_namespace_nspacl ;
 int Anum_pg_proc_proacl ;
 int Anum_pg_type_typacl ;
 int BTEqualStrategyNumber ;
 scalar_t__ CastRelationId ;
 scalar_t__ CollationRelationId ;
 scalar_t__ ConversionRelationId ;
 int DatumGetAclP (int ) ;
 int ERROR ;
 scalar_t__ EventTriggerRelationId ;
 int FOREIGNDATAWRAPPEROID ;
 int FOREIGNSERVEROID ;
 int F_OIDEQ ;
 scalar_t__ ForeignDataWrapperRelationId ;
 scalar_t__ ForeignServerRelationId ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int) ;
 int LANGOID ;
 scalar_t__ LanguageRelationId ;
 int LargeObjectMetadataOidIndexId ;
 scalar_t__ LargeObjectMetadataRelationId ;
 int NAMESPACEOID ;
 scalar_t__ NamespaceRelationId ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OperatorClassRelationId ;
 scalar_t__ OperatorFamilyRelationId ;
 scalar_t__ OperatorRelationId ;
 int PROCOID ;
 scalar_t__ ProcedureRelationId ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RELKIND_SEQUENCE ;
 int RELOID ;
 int RelationGetDescr (int ) ;
 scalar_t__ RelationRelationId ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 scalar_t__ TSConfigRelationId ;
 scalar_t__ TSDictionaryRelationId ;
 scalar_t__ TSParserRelationId ;
 scalar_t__ TSTemplateRelationId ;
 int TYPEOID ;
 scalar_t__ TransformRelationId ;
 scalar_t__ TypeRelationId ;
 int elog (int ,char*,scalar_t__) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int recordExtensionInitPrivWorker (scalar_t__,scalar_t__,int,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_open (scalar_t__,int ) ;

void
recordExtObjInitPriv(Oid objoid, Oid classoid)
{







 if (classoid == RelationRelationId)
 {
  Form_pg_class pg_class_tuple;
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for relation %u", objoid);
  pg_class_tuple = (Form_pg_class) GETSTRUCT(tuple);


  if (pg_class_tuple->relkind == RELKIND_INDEX ||
   pg_class_tuple->relkind == RELKIND_PARTITIONED_INDEX)
   return;


  if (pg_class_tuple->relkind == RELKIND_COMPOSITE_TYPE)
   return;






  if (pg_class_tuple->relkind != RELKIND_SEQUENCE)
  {
   AttrNumber curr_att;
   AttrNumber nattrs = pg_class_tuple->relnatts;

   for (curr_att = 1; curr_att <= nattrs; curr_att++)
   {
    HeapTuple attTuple;
    Datum attaclDatum;

    attTuple = SearchSysCache2(ATTNUM,
             ObjectIdGetDatum(objoid),
             Int16GetDatum(curr_att));

    if (!HeapTupleIsValid(attTuple))
     continue;


    if (((Form_pg_attribute) GETSTRUCT(attTuple))->attisdropped)
    {
     ReleaseSysCache(attTuple);
     continue;
    }

    attaclDatum = SysCacheGetAttr(ATTNUM, attTuple,
             Anum_pg_attribute_attacl,
             &isNull);


    if (isNull)
    {
     ReleaseSysCache(attTuple);
     continue;
    }

    recordExtensionInitPrivWorker(objoid, classoid, curr_att,
             DatumGetAclP(attaclDatum));

    ReleaseSysCache(attTuple);
   }
  }

  aclDatum = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_relacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == ForeignDataWrapperRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(FOREIGNDATAWRAPPEROID,
        ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for foreign data wrapper %u",
     objoid);

  aclDatum = SysCacheGetAttr(FOREIGNDATAWRAPPEROID, tuple,
           Anum_pg_foreign_data_wrapper_fdwacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == ForeignServerRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(FOREIGNSERVEROID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for foreign data wrapper %u",
     objoid);

  aclDatum = SysCacheGetAttr(FOREIGNSERVEROID, tuple,
           Anum_pg_foreign_server_srvacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == LanguageRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(LANGOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for language %u", objoid);

  aclDatum = SysCacheGetAttr(LANGOID, tuple, Anum_pg_language_lanacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == LargeObjectMetadataRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;
  ScanKeyData entry[1];
  SysScanDesc scan;
  Relation relation;

  relation = table_open(LargeObjectMetadataRelationId, RowExclusiveLock);


  ScanKeyInit(&entry[0],
     Anum_pg_largeobject_metadata_oid,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(objoid));

  scan = systable_beginscan(relation,
          LargeObjectMetadataOidIndexId, 1,
          ((void*)0), 1, entry);

  tuple = systable_getnext(scan);
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "could not find tuple for large object %u", objoid);

  aclDatum = heap_getattr(tuple,
        Anum_pg_largeobject_metadata_lomacl,
        RelationGetDescr(relation), &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  systable_endscan(scan);
 }

 else if (classoid == NamespaceRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for function %u", objoid);

  aclDatum = SysCacheGetAttr(NAMESPACEOID, tuple,
           Anum_pg_namespace_nspacl, &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == ProcedureRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for function %u", objoid);

  aclDatum = SysCacheGetAttr(PROCOID, tuple, Anum_pg_proc_proacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }

 else if (classoid == TypeRelationId)
 {
  Datum aclDatum;
  bool isNull;
  HeapTuple tuple;

  tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(objoid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for function %u", objoid);

  aclDatum = SysCacheGetAttr(TYPEOID, tuple, Anum_pg_type_typacl,
           &isNull);


  if (!isNull)
   recordExtensionInitPrivWorker(objoid, classoid, 0,
            DatumGetAclP(aclDatum));

  ReleaseSysCache(tuple);
 }
 else if (classoid == AccessMethodRelationId ||
    classoid == AggregateRelationId ||
    classoid == CastRelationId ||
    classoid == CollationRelationId ||
    classoid == ConversionRelationId ||
    classoid == EventTriggerRelationId ||
    classoid == OperatorRelationId ||
    classoid == OperatorClassRelationId ||
    classoid == OperatorFamilyRelationId ||
    classoid == NamespaceRelationId ||
    classoid == TSConfigRelationId ||
    classoid == TSDictionaryRelationId ||
    classoid == TSParserRelationId ||
    classoid == TSTemplateRelationId ||
    classoid == TransformRelationId
  )
 {

 }





 else
 {
  elog(ERROR, "unrecognized or unsupported class OID: %u", classoid);
 }
}
