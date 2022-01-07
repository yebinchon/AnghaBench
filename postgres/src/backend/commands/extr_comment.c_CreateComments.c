
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_description_classoid ;
 int Anum_pg_description_description ;
 int Anum_pg_description_objoid ;
 int Anum_pg_description_objsubid ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DescriptionObjIndexId ;
 int DescriptionRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int Int32GetDatum (int ) ;
 int Natts_pg_description ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 TYPE_1__* heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int *,int*,int*) ;
 scalar_t__ strlen (char const*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
CreateComments(Oid oid, Oid classoid, int32 subid, const char *comment)
{
 Relation description;
 ScanKeyData skey[3];
 SysScanDesc sd;
 HeapTuple oldtuple;
 HeapTuple newtuple = ((void*)0);
 Datum values[Natts_pg_description];
 bool nulls[Natts_pg_description];
 bool replaces[Natts_pg_description];
 int i;


 if (comment != ((void*)0) && strlen(comment) == 0)
  comment = ((void*)0);


 if (comment != ((void*)0))
 {
  for (i = 0; i < Natts_pg_description; i++)
  {
   nulls[i] = 0;
   replaces[i] = 1;
  }
  values[Anum_pg_description_objoid - 1] = ObjectIdGetDatum(oid);
  values[Anum_pg_description_classoid - 1] = ObjectIdGetDatum(classoid);
  values[Anum_pg_description_objsubid - 1] = Int32GetDatum(subid);
  values[Anum_pg_description_description - 1] = CStringGetTextDatum(comment);
 }



 ScanKeyInit(&skey[0],
    Anum_pg_description_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oid));
 ScanKeyInit(&skey[1],
    Anum_pg_description_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));
 ScanKeyInit(&skey[2],
    Anum_pg_description_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(subid));

 description = table_open(DescriptionRelationId, RowExclusiveLock);

 sd = systable_beginscan(description, DescriptionObjIndexId, 1,
       ((void*)0), 3, skey);

 while ((oldtuple = systable_getnext(sd)) != ((void*)0))
 {


  if (comment == ((void*)0))
   CatalogTupleDelete(description, &oldtuple->t_self);
  else
  {
   newtuple = heap_modify_tuple(oldtuple, RelationGetDescr(description), values,
           nulls, replaces);
   CatalogTupleUpdate(description, &oldtuple->t_self, newtuple);
  }

  break;
 }

 systable_endscan(sd);



 if (newtuple == ((void*)0) && comment != ((void*)0))
 {
  newtuple = heap_form_tuple(RelationGetDescr(description),
           values, nulls);
  CatalogTupleInsert(description, newtuple);
 }

 if (newtuple != ((void*)0))
  heap_freetuple(newtuple);



 table_close(description, NoLock);
}
