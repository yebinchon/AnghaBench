
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_shseclabel_classoid ;
 int Anum_pg_shseclabel_label ;
 int Anum_pg_shseclabel_objoid ;
 int Anum_pg_shseclabel_provider ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int F_OIDEQ ;
 int F_TEXTEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedSecLabelObjectIndexId ;
 int SharedSecLabelRelationId ;
 char* TextDatumGetCString (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static char *
GetSharedSecurityLabel(const ObjectAddress *object, const char *provider)
{
 Relation pg_shseclabel;
 ScanKeyData keys[3];
 SysScanDesc scan;
 HeapTuple tuple;
 Datum datum;
 bool isnull;
 char *seclabel = ((void*)0);

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

 pg_shseclabel = table_open(SharedSecLabelRelationId, AccessShareLock);

 scan = systable_beginscan(pg_shseclabel, SharedSecLabelObjectIndexId, 1,
         ((void*)0), 3, keys);

 tuple = systable_getnext(scan);
 if (HeapTupleIsValid(tuple))
 {
  datum = heap_getattr(tuple, Anum_pg_shseclabel_label,
        RelationGetDescr(pg_shseclabel), &isnull);
  if (!isnull)
   seclabel = TextDatumGetCString(datum);
 }
 systable_endscan(scan);

 table_close(pg_shseclabel, AccessShareLock);

 return seclabel;
}
