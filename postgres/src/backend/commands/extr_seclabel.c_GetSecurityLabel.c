
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectSubId; int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_seclabel_classoid ;
 int Anum_pg_seclabel_label ;
 int Anum_pg_seclabel_objoid ;
 int Anum_pg_seclabel_objsubid ;
 int Anum_pg_seclabel_provider ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int F_TEXTEQ ;
 char* GetSharedSecurityLabel (TYPE_1__ const*,char const*) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int32GetDatum (int ) ;
 scalar_t__ IsSharedRelation (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SecLabelObjectIndexId ;
 int SecLabelRelationId ;
 char* TextDatumGetCString (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

char *
GetSecurityLabel(const ObjectAddress *object, const char *provider)
{
 Relation pg_seclabel;
 ScanKeyData keys[4];
 SysScanDesc scan;
 HeapTuple tuple;
 Datum datum;
 bool isnull;
 char *seclabel = ((void*)0);


 if (IsSharedRelation(object->classId))
  return GetSharedSecurityLabel(object, provider);


 ScanKeyInit(&keys[0],
    Anum_pg_seclabel_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));
 ScanKeyInit(&keys[1],
    Anum_pg_seclabel_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));
 ScanKeyInit(&keys[2],
    Anum_pg_seclabel_objsubid,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(object->objectSubId));
 ScanKeyInit(&keys[3],
    Anum_pg_seclabel_provider,
    BTEqualStrategyNumber, F_TEXTEQ,
    CStringGetTextDatum(provider));

 pg_seclabel = table_open(SecLabelRelationId, AccessShareLock);

 scan = systable_beginscan(pg_seclabel, SecLabelObjectIndexId, 1,
         ((void*)0), 4, keys);

 tuple = systable_getnext(scan);
 if (HeapTupleIsValid(tuple))
 {
  datum = heap_getattr(tuple, Anum_pg_seclabel_label,
        RelationGetDescr(pg_seclabel), &isnull);
  if (!isnull)
   seclabel = TextDatumGetCString(datum);
 }
 systable_endscan(scan);

 table_close(pg_seclabel, AccessShareLock);

 return seclabel;
}
