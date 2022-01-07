
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_18__ {scalar_t__ inhparent; scalar_t__ inhseqno; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_inherits ;


 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int MergeAttributesIntoExisting (TYPE_2__*,TYPE_2__*) ;
 int MergeConstraintsIntoExisting (TYPE_2__*,TYPE_2__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RelationGetRelationName (TYPE_2__*) ;
 scalar_t__ RelationGetRelid (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int StoreCatalogInheritance1 (scalar_t__,scalar_t__,scalar_t__,TYPE_2__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
CreateInheritance(Relation child_rel, Relation parent_rel)
{
 Relation catalogRelation;
 SysScanDesc scan;
 ScanKeyData key;
 HeapTuple inheritsTuple;
 int32 inhseqno;


 catalogRelation = table_open(InheritsRelationId, RowExclusiveLock);
 ScanKeyInit(&key,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(child_rel)));
 scan = systable_beginscan(catalogRelation, InheritsRelidSeqnoIndexId,
         1, ((void*)0), 1, &key);


 inhseqno = 0;
 while (HeapTupleIsValid(inheritsTuple = systable_getnext(scan)))
 {
  Form_pg_inherits inh = (Form_pg_inherits) GETSTRUCT(inheritsTuple);

  if (inh->inhparent == RelationGetRelid(parent_rel))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_TABLE),
      errmsg("relation \"%s\" would be inherited from more than once",
       RelationGetRelationName(parent_rel))));

  if (inh->inhseqno > inhseqno)
   inhseqno = inh->inhseqno;
 }
 systable_endscan(scan);


 MergeAttributesIntoExisting(child_rel, parent_rel);


 MergeConstraintsIntoExisting(child_rel, parent_rel);




 StoreCatalogInheritance1(RelationGetRelid(child_rel),
        RelationGetRelid(parent_rel),
        inhseqno + 1,
        catalogRelation,
        parent_rel->rd_rel->relkind ==
        RELKIND_PARTITIONED_TABLE);


 table_close(catalogRelation, RowExclusiveLock);
}
