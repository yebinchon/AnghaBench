
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ relkind; int reltype; } ;
struct TYPE_3__ {scalar_t__ refobjsubid; scalar_t__ classid; scalar_t__ objsubid; scalar_t__ deptype; int objid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddresses ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_depend ;


 int AccessShareLock ;
 int AlterRelationNamespaceInternal (int ,int ,int ,int ,int,int *) ;
 int AlterTypeNamespaceInternal (int ,int ,int,int,int *) ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int BTEqualStrategyNumber ;
 scalar_t__ DEPENDENCY_AUTO ;
 scalar_t__ DEPENDENCY_INTERNAL ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_SEQUENCE ;
 TYPE_2__* RelationGetForm (int ) ;
 scalar_t__ RelationGetRelid (int ) ;
 scalar_t__ RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
AlterSeqNamespaces(Relation classRel, Relation rel,
       Oid oldNspOid, Oid newNspOid, ObjectAddresses *objsMoved,
       LOCKMODE lockmode)
{
 Relation depRel;
 SysScanDesc scan;
 ScanKeyData key[2];
 HeapTuple tup;





 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));


 scan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_depend depForm = (Form_pg_depend) GETSTRUCT(tup);
  Relation seqRel;


  if (depForm->refobjsubid == 0 ||
   depForm->classid != RelationRelationId ||
   depForm->objsubid != 0 ||
   !(depForm->deptype == DEPENDENCY_AUTO || depForm->deptype == DEPENDENCY_INTERNAL))
   continue;


  seqRel = relation_open(depForm->objid, lockmode);


  if (RelationGetForm(seqRel)->relkind != RELKIND_SEQUENCE)
  {

   relation_close(seqRel, lockmode);
   continue;
  }


  AlterRelationNamespaceInternal(classRel, depForm->objid,
            oldNspOid, newNspOid,
            1, objsMoved);





  AlterTypeNamespaceInternal(RelationGetForm(seqRel)->reltype,
           newNspOid, 0, 0, objsMoved);


  relation_close(seqRel, NoLock);
 }

 systable_endscan(scan);

 relation_close(depRel, AccessShareLock);
}
