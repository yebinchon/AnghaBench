
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_2__ {int oid; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef scalar_t__ DropBehavior ;


 int AccessShareLock ;
 int Anum_pg_class_reloftype ;
 int BTEqualStrategyNumber ;
 scalar_t__ DROP_RESTRICT ;
 int ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ;
 int ERROR ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 int * heap_getnext (int ,int ) ;
 int * lappend_oid (int *,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
find_typed_table_dependencies(Oid typeOid, const char *typeName, DropBehavior behavior)
{
 Relation classRel;
 ScanKeyData key[1];
 TableScanDesc scan;
 HeapTuple tuple;
 List *result = NIL;

 classRel = table_open(RelationRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_class_reloftype,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(typeOid));

 scan = table_beginscan_catalog(classRel, 1, key);

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Form_pg_class classform = (Form_pg_class) GETSTRUCT(tuple);

  if (behavior == DROP_RESTRICT)
   ereport(ERROR,
     (errcode(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
      errmsg("cannot alter type \"%s\" because it is the type of a typed table",
       typeName),
      errhint("Use ALTER ... CASCADE to alter the typed tables too.")));
  else
   result = lappend_oid(result, classform->oid);
 }

 table_endscan(scan);
 table_close(classRel, AccessShareLock);

 return result;
}
