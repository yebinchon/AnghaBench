
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_12__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
struct TYPE_11__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int NameData ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;


 int Anum_pg_conversion_condefault ;
 int Anum_pg_conversion_conforencoding ;
 int Anum_pg_conversion_conname ;
 int Anum_pg_conversion_connamespace ;
 int Anum_pg_conversion_conowner ;
 int Anum_pg_conversion_conproc ;
 int Anum_pg_conversion_contoencoding ;
 int Anum_pg_conversion_oid ;
 scalar_t__ BoolGetDatum (int) ;
 int CONNAMENSP ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int ConversionOidIndexId ;
 int ConversionRelationId ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 scalar_t__ FindDefaultConversion (void*,int ,int ) ;
 void* GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 scalar_t__ Int32GetDatum (int ) ;
 int InvokeObjectPostCreateHook (int ,void*,int ) ;
 scalar_t__ NameGetDatum (int *) ;
 int NamespaceRelationId ;
 int Natts_pg_conversion ;
 scalar_t__ ObjectIdGetDatum (void*) ;
 int PointerGetDatum (char const*) ;
 int ProcedureRelationId ;
 int RowExclusiveLock ;
 scalar_t__ SearchSysCacheExists2 (int ,int ,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 int heap_freetuple (int ) ;
 int namestrcpy (int *,char const*) ;
 int pg_encoding_to_char (int ) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnOwner (int ,void*,void*) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

ObjectAddress
ConversionCreate(const char *conname, Oid connamespace,
     Oid conowner,
     int32 conforencoding, int32 contoencoding,
     Oid conproc, bool def)
{
 int i;
 Relation rel;
 TupleDesc tupDesc;
 HeapTuple tup;
 Oid oid;
 bool nulls[Natts_pg_conversion];
 Datum values[Natts_pg_conversion];
 NameData cname;
 ObjectAddress myself,
    referenced;


 if (!conname)
  elog(ERROR, "no conversion name supplied");


 if (SearchSysCacheExists2(CONNAMENSP,
         PointerGetDatum(conname),
         ObjectIdGetDatum(connamespace)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("conversion \"%s\" already exists", conname)));

 if (def)
 {




  if (FindDefaultConversion(connamespace,
          conforencoding,
          contoencoding))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("default conversion for %s to %s already exists",
       pg_encoding_to_char(conforencoding),
       pg_encoding_to_char(contoencoding))));
 }


 rel = table_open(ConversionRelationId, RowExclusiveLock);
 tupDesc = rel->rd_att;


 for (i = 0; i < Natts_pg_conversion; i++)
 {
  nulls[i] = 0;
  values[i] = (Datum) ((void*)0);
 }


 namestrcpy(&cname, conname);
 oid = GetNewOidWithIndex(rel, ConversionOidIndexId,
        Anum_pg_conversion_oid);
 values[Anum_pg_conversion_oid - 1] = ObjectIdGetDatum(oid);
 values[Anum_pg_conversion_conname - 1] = NameGetDatum(&cname);
 values[Anum_pg_conversion_connamespace - 1] = ObjectIdGetDatum(connamespace);
 values[Anum_pg_conversion_conowner - 1] = ObjectIdGetDatum(conowner);
 values[Anum_pg_conversion_conforencoding - 1] = Int32GetDatum(conforencoding);
 values[Anum_pg_conversion_contoencoding - 1] = Int32GetDatum(contoencoding);
 values[Anum_pg_conversion_conproc - 1] = ObjectIdGetDatum(conproc);
 values[Anum_pg_conversion_condefault - 1] = BoolGetDatum(def);

 tup = heap_form_tuple(tupDesc, values, nulls);


 CatalogTupleInsert(rel, tup);

 myself.classId = ConversionRelationId;
 myself.objectId = oid;
 myself.objectSubId = 0;


 referenced.classId = ProcedureRelationId;
 referenced.objectId = conproc;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 referenced.classId = NamespaceRelationId;
 referenced.objectId = connamespace;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnOwner(ConversionRelationId, oid, conowner);


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(ConversionRelationId, oid, 0);

 heap_freetuple(tup);
 table_close(rel, RowExclusiveLock);

 return myself;
}
