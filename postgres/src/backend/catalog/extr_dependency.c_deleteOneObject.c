
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int t_self; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;


 int Anum_pg_depend_classid ;
 int Anum_pg_depend_objid ;
 int Anum_pg_depend_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int CommandCounterIncrement () ;
 int DeleteComments (int ,int ,scalar_t__) ;
 int DeleteInitPrivs (TYPE_1__ const*) ;
 int DeleteSecurityLabel (TYPE_1__ const*) ;
 int DependDependerIndexId ;
 int DependRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int Int32GetDatum (scalar_t__) ;
 int InvokeObjectDropHookArg (int ,int ,scalar_t__,int) ;
 int ObjectIdGetDatum (int ) ;
 int PERFORM_DELETION_CONCURRENTLY ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int deleteSharedDependencyRecordsFor (int ,int ,scalar_t__) ;
 int doDeletion (TYPE_1__ const*,int) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
deleteOneObject(const ObjectAddress *object, Relation *depRel, int flags)
{
 ScanKeyData key[3];
 int nkeys;
 SysScanDesc scan;
 HeapTuple tup;


 InvokeObjectDropHookArg(object->classId, object->objectId,
       object->objectSubId, flags);






 if (flags & PERFORM_DELETION_CONCURRENTLY)
  table_close(*depRel, RowExclusiveLock);
 doDeletion(object, flags);




 if (flags & PERFORM_DELETION_CONCURRENTLY)
  *depRel = table_open(DependRelationId, RowExclusiveLock);
 ScanKeyInit(&key[0],
    Anum_pg_depend_classid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_objid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));
 if (object->objectSubId != 0)
 {
  ScanKeyInit(&key[2],
     Anum_pg_depend_objsubid,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(object->objectSubId));
  nkeys = 3;
 }
 else
  nkeys = 2;

 scan = systable_beginscan(*depRel, DependDependerIndexId, 1,
         ((void*)0), nkeys, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  CatalogTupleDelete(*depRel, &tup->t_self);
 }

 systable_endscan(scan);





 deleteSharedDependencyRecordsFor(object->classId, object->objectId,
          object->objectSubId);







 DeleteComments(object->objectId, object->classId, object->objectSubId);
 DeleteSecurityLabel(object);
 DeleteInitPrivs(object);





 CommandCounterIncrement();




}
