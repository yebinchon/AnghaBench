
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nulls ;
typedef int int32 ;
struct TYPE_4__ {int rd_att; } ;
typedef int SharedDependencyType ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_shdepend_classid ;
 int Anum_pg_shdepend_dbid ;
 int Anum_pg_shdepend_deptype ;
 int Anum_pg_shdepend_objid ;
 int Anum_pg_shdepend_objsubid ;
 int Anum_pg_shdepend_refclassid ;
 int Anum_pg_shdepend_refobjid ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int CharGetDatum (int ) ;
 int Int32GetDatum (int ) ;
 int Natts_pg_shdepend ;
 int ObjectIdGetDatum (int ) ;
 int classIdGetDbId (int ) ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int shdepLockAndCheckObject (int ,int ) ;

__attribute__((used)) static void
shdepAddDependency(Relation sdepRel,
       Oid classId, Oid objectId, int32 objsubId,
       Oid refclassId, Oid refobjId,
       SharedDependencyType deptype)
{
 HeapTuple tup;
 Datum values[Natts_pg_shdepend];
 bool nulls[Natts_pg_shdepend];






 shdepLockAndCheckObject(refclassId, refobjId);

 memset(nulls, 0, sizeof(nulls));




 values[Anum_pg_shdepend_dbid - 1] = ObjectIdGetDatum(classIdGetDbId(classId));
 values[Anum_pg_shdepend_classid - 1] = ObjectIdGetDatum(classId);
 values[Anum_pg_shdepend_objid - 1] = ObjectIdGetDatum(objectId);
 values[Anum_pg_shdepend_objsubid - 1] = Int32GetDatum(objsubId);

 values[Anum_pg_shdepend_refclassid - 1] = ObjectIdGetDatum(refclassId);
 values[Anum_pg_shdepend_refobjid - 1] = ObjectIdGetDatum(refobjId);
 values[Anum_pg_shdepend_deptype - 1] = CharGetDatum(deptype);

 tup = heap_form_tuple(sdepRel->rd_att, values, nulls);

 CatalogTupleInsert(sdepRel, tup);


 heap_freetuple(tup);
}
