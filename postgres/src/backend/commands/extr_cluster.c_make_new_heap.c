
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int reltoastrelid; int relam; int relowner; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int NewHeapName ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef scalar_t__ Datum ;


 int Anum_pg_class_reloptions ;
 int Assert (int) ;
 int CommandCounterIncrement () ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int LookupCreationNamespace (char*) ;
 int NAMEDATALEN ;
 int NIL ;
 int NewHeapCreateToastTable (int,scalar_t__,int ) ;
 int NoLock ;
 int ONCOMMIT_NOOP ;
 int ObjectIdGetDatum (int) ;
 scalar_t__ OidIsValid (int) ;
 int RELKIND_RELATION ;
 int RELOID ;
 char RELPERSISTENCE_TEMP ;
 int RelationGetDescr (TYPE_2__*) ;
 int RelationGetNamespace (TYPE_2__*) ;
 int RelationIsMapped (TYPE_2__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int) ;
 int heap_create_with_catalog (char*,int,int,int,int,int,int ,int ,int ,int ,int ,char,int,int ,int ,scalar_t__,int,int,int,int,int *) ;
 int snprintf (char*,int,char*,int) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int,int ) ;

Oid
make_new_heap(Oid OIDOldHeap, Oid NewTableSpace, char relpersistence,
     LOCKMODE lockmode)
{
 TupleDesc OldHeapDesc;
 char NewHeapName[NAMEDATALEN];
 Oid OIDNewHeap;
 Oid toastid;
 Relation OldHeap;
 HeapTuple tuple;
 Datum reloptions;
 bool isNull;
 Oid namespaceid;

 OldHeap = table_open(OIDOldHeap, lockmode);
 OldHeapDesc = RelationGetDescr(OldHeap);
 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(OIDOldHeap));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", OIDOldHeap);
 reloptions = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_reloptions,
         &isNull);
 if (isNull)
  reloptions = (Datum) 0;

 if (relpersistence == RELPERSISTENCE_TEMP)
  namespaceid = LookupCreationNamespace("pg_temp");
 else
  namespaceid = RelationGetNamespace(OldHeap);
 snprintf(NewHeapName, sizeof(NewHeapName), "pg_temp_%u", OIDOldHeap);

 OIDNewHeap = heap_create_with_catalog(NewHeapName,
            namespaceid,
            NewTableSpace,
            InvalidOid,
            InvalidOid,
            InvalidOid,
            OldHeap->rd_rel->relowner,
            OldHeap->rd_rel->relam,
            OldHeapDesc,
            NIL,
            RELKIND_RELATION,
            relpersistence,
            0,
            RelationIsMapped(OldHeap),
            ONCOMMIT_NOOP,
            reloptions,
            0,
            1,
            1,
            OIDOldHeap,
            ((void*)0));
 Assert(OIDNewHeap != InvalidOid);

 ReleaseSysCache(tuple);





 CommandCounterIncrement();
 toastid = OldHeap->rd_rel->reltoastrelid;
 if (OidIsValid(toastid))
 {

  tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(toastid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for relation %u", toastid);
  reloptions = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_reloptions,
          &isNull);
  if (isNull)
   reloptions = (Datum) 0;

  NewHeapCreateToastTable(OIDNewHeap, reloptions, lockmode);

  ReleaseSysCache(tuple);
 }

 table_close(OldHeap, NoLock);

 return OIDNewHeap;
}
