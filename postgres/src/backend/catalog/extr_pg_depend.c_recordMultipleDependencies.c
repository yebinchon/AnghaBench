
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nulls ;
struct TYPE_12__ {int objectSubId; int objectId; int classId; } ;
struct TYPE_11__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__ ObjectAddress ;
typedef int HeapTuple ;
typedef scalar_t__ DependencyType ;
typedef int Datum ;
typedef int * CatalogIndexState ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_deptype ;
 int Anum_pg_depend_objid ;
 int Anum_pg_depend_objsubid ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int Anum_pg_depend_refobjsubid ;
 int CatalogCloseIndexes (int *) ;
 int * CatalogOpenIndexes (TYPE_1__*) ;
 int CatalogTupleInsertWithInfo (TYPE_1__*,int ,int *) ;
 int CharGetDatum (char) ;
 int DependRelationId ;
 int Int32GetDatum (int ) ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int Natts_pg_depend ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int isObjectPinned (TYPE_2__ const*,TYPE_1__*) ;
 int memset (int*,int,int) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

void
recordMultipleDependencies(const ObjectAddress *depender,
         const ObjectAddress *referenced,
         int nreferenced,
         DependencyType behavior)
{
 Relation dependDesc;
 CatalogIndexState indstate;
 HeapTuple tup;
 int i;
 bool nulls[Natts_pg_depend];
 Datum values[Natts_pg_depend];

 if (nreferenced <= 0)
  return;





 if (IsBootstrapProcessingMode())
  return;

 dependDesc = table_open(DependRelationId, RowExclusiveLock);


 indstate = ((void*)0);

 memset(nulls, 0, sizeof(nulls));

 for (i = 0; i < nreferenced; i++, referenced++)
 {





  if (!isObjectPinned(referenced, dependDesc))
  {




   values[Anum_pg_depend_classid - 1] = ObjectIdGetDatum(depender->classId);
   values[Anum_pg_depend_objid - 1] = ObjectIdGetDatum(depender->objectId);
   values[Anum_pg_depend_objsubid - 1] = Int32GetDatum(depender->objectSubId);

   values[Anum_pg_depend_refclassid - 1] = ObjectIdGetDatum(referenced->classId);
   values[Anum_pg_depend_refobjid - 1] = ObjectIdGetDatum(referenced->objectId);
   values[Anum_pg_depend_refobjsubid - 1] = Int32GetDatum(referenced->objectSubId);

   values[Anum_pg_depend_deptype - 1] = CharGetDatum((char) behavior);

   tup = heap_form_tuple(dependDesc->rd_att, values, nulls);


   if (indstate == ((void*)0))
    indstate = CatalogOpenIndexes(dependDesc);

   CatalogTupleInsertWithInfo(dependDesc, tup, indstate);

   heap_freetuple(tup);
  }
 }

 if (indstate != ((void*)0))
  CatalogCloseIndexes(indstate);

 table_close(dependDesc, RowExclusiveLock);
}
