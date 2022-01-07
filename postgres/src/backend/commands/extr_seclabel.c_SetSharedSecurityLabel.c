
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int replaces ;
typedef int nulls ;
struct TYPE_13__ {int t_self; } ;
struct TYPE_12__ {int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_shseclabel_classoid ;
 int Anum_pg_shseclabel_label ;
 int Anum_pg_shseclabel_objoid ;
 int Anum_pg_shseclabel_provider ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int CatalogTupleDelete (int ,int *) ;
 int CatalogTupleInsert (int ,TYPE_2__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int F_OIDEQ ;
 int F_TEXTEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int Natts_pg_shseclabel ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int,int ,int ,int ) ;
 int SharedSecLabelObjectIndexId ;
 int SharedSecLabelRelationId ;
 TYPE_2__* heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int *,int*,int*) ;
 int memset (int*,int,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
SetSharedSecurityLabel(const ObjectAddress *object,
        const char *provider, const char *label)
{
 Relation pg_shseclabel;
 ScanKeyData keys[4];
 SysScanDesc scan;
 HeapTuple oldtup;
 HeapTuple newtup = ((void*)0);
 Datum values[Natts_pg_shseclabel];
 bool nulls[Natts_pg_shseclabel];
 bool replaces[Natts_pg_shseclabel];


 memset(nulls, 0, sizeof(nulls));
 memset(replaces, 0, sizeof(replaces));
 values[Anum_pg_shseclabel_objoid - 1] = ObjectIdGetDatum(object->objectId);
 values[Anum_pg_shseclabel_classoid - 1] = ObjectIdGetDatum(object->classId);
 values[Anum_pg_shseclabel_provider - 1] = CStringGetTextDatum(provider);
 if (label != ((void*)0))
  values[Anum_pg_shseclabel_label - 1] = CStringGetTextDatum(label);


 ScanKeyInit(&keys[0],
    Anum_pg_shseclabel_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));
 ScanKeyInit(&keys[1],
    Anum_pg_shseclabel_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));
 ScanKeyInit(&keys[2],
    Anum_pg_shseclabel_provider,
    BTEqualStrategyNumber, F_TEXTEQ,
    CStringGetTextDatum(provider));

 pg_shseclabel = table_open(SharedSecLabelRelationId, RowExclusiveLock);

 scan = systable_beginscan(pg_shseclabel, SharedSecLabelObjectIndexId, 1,
         ((void*)0), 3, keys);

 oldtup = systable_getnext(scan);
 if (HeapTupleIsValid(oldtup))
 {
  if (label == ((void*)0))
   CatalogTupleDelete(pg_shseclabel, &oldtup->t_self);
  else
  {
   replaces[Anum_pg_shseclabel_label - 1] = 1;
   newtup = heap_modify_tuple(oldtup, RelationGetDescr(pg_shseclabel),
            values, nulls, replaces);
   CatalogTupleUpdate(pg_shseclabel, &oldtup->t_self, newtup);
  }
 }
 systable_endscan(scan);


 if (newtup == ((void*)0) && label != ((void*)0))
 {
  newtup = heap_form_tuple(RelationGetDescr(pg_shseclabel),
         values, nulls);
  CatalogTupleInsert(pg_shseclabel, newtup);
 }

 if (newtup != ((void*)0))
  heap_freetuple(newtup);

 table_close(pg_shseclabel, RowExclusiveLock);
}
