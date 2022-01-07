
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int validate_default; int * partition_constraint; } ;
struct TYPE_18__ {int nparts; int * oids; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PartitionDesc ;
typedef int List ;
typedef int Expr ;
typedef TYPE_4__ AlteredTableInfo ;


 TYPE_4__* ATGetQueueEntry (int **,TYPE_2__*) ;
 int AccessExclusiveLock ;
 int Assert (int ) ;
 int DEBUG1 ;
 int ERROR ;
 int NoLock ;
 scalar_t__ PartConstraintImpliedByRelConstraint (TYPE_2__*,int *) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 TYPE_3__* RelationGetPartitionDesc (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ linitial (int *) ;
 int * map_partition_varattnos (int *,int,TYPE_2__*,TYPE_2__*,int*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
QueuePartitionConstraintValidation(List **wqueue, Relation scanrel,
           List *partConstraint,
           bool validate_default)
{




 if (PartConstraintImpliedByRelConstraint(scanrel, partConstraint))
 {
  if (!validate_default)
   ereport(DEBUG1,
     (errmsg("partition constraint for table \"%s\" is implied by existing constraints",
       RelationGetRelationName(scanrel))));
  else
   ereport(DEBUG1,
     (errmsg("updated partition constraint for default partition \"%s\" is implied by existing constraints",
       RelationGetRelationName(scanrel))));
  return;
 }






 if (scanrel->rd_rel->relkind == RELKIND_RELATION)
 {
  AlteredTableInfo *tab;


  tab = ATGetQueueEntry(wqueue, scanrel);
  Assert(tab->partition_constraint == ((void*)0));
  tab->partition_constraint = (Expr *) linitial(partConstraint);
  tab->validate_default = validate_default;
 }
 else if (scanrel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  PartitionDesc partdesc = RelationGetPartitionDesc(scanrel);
  int i;

  for (i = 0; i < partdesc->nparts; i++)
  {
   Relation part_rel;
   bool found_whole_row;
   List *thisPartConstraint;




   part_rel = table_open(partdesc->oids[i], AccessExclusiveLock);





   thisPartConstraint =
    map_partition_varattnos(partConstraint, 1,
          part_rel, scanrel, &found_whole_row);

   if (found_whole_row)
    elog(ERROR, "unexpected whole-row reference found in partition constraint");

   QueuePartitionConstraintValidation(wqueue, part_rel,
              thisPartConstraint,
              validate_default);
   table_close(part_rel, NoLock);
  }
 }
}
