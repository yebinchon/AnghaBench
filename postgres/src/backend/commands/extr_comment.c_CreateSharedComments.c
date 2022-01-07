
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_shdescription_classoid ;
 int Anum_pg_shdescription_description ;
 int Anum_pg_shdescription_objoid ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_1__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int F_OIDEQ ;
 int Natts_pg_shdescription ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 int SharedDescriptionObjIndexId ;
 int SharedDescriptionRelationId ;
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
CreateSharedComments(Oid oid, Oid classoid, const char *comment)
{
 Relation shdescription;
 ScanKeyData skey[2];
 SysScanDesc sd;
 HeapTuple oldtuple;
 HeapTuple newtuple = ((void*)0);
 Datum values[Natts_pg_shdescription];
 bool nulls[Natts_pg_shdescription];
 bool replaces[Natts_pg_shdescription];
 int i;


 if (comment != ((void*)0) && strlen(comment) == 0)
  comment = ((void*)0);


 if (comment != ((void*)0))
 {
  for (i = 0; i < Natts_pg_shdescription; i++)
  {
   nulls[i] = 0;
   replaces[i] = 1;
  }
  values[Anum_pg_shdescription_objoid - 1] = ObjectIdGetDatum(oid);
  values[Anum_pg_shdescription_classoid - 1] = ObjectIdGetDatum(classoid);
  values[Anum_pg_shdescription_description - 1] = CStringGetTextDatum(comment);
 }



 ScanKeyInit(&skey[0],
    Anum_pg_shdescription_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oid));
 ScanKeyInit(&skey[1],
    Anum_pg_shdescription_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));

 shdescription = table_open(SharedDescriptionRelationId, RowExclusiveLock);

 sd = systable_beginscan(shdescription, SharedDescriptionObjIndexId, 1,
       ((void*)0), 2, skey);

 while ((oldtuple = systable_getnext(sd)) != ((void*)0))
 {


  if (comment == ((void*)0))
   CatalogTupleDelete(shdescription, &oldtuple->t_self);
  else
  {
   newtuple = heap_modify_tuple(oldtuple, RelationGetDescr(shdescription),
           values, nulls, replaces);
   CatalogTupleUpdate(shdescription, &oldtuple->t_self, newtuple);
  }

  break;
 }

 systable_endscan(sd);



 if (newtuple == ((void*)0) && comment != ((void*)0))
 {
  newtuple = heap_form_tuple(RelationGetDescr(shdescription),
           values, nulls);
  CatalogTupleInsert(shdescription, newtuple);
 }

 if (newtuple != ((void*)0))
  heap_freetuple(newtuple);



 table_close(shdescription, NoLock);
}
