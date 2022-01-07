
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nparts; } ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PartitionDesc ;


 int Assert (int ) ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 TYPE_3__* RelationGetPartitionDesc (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
ATPrepDropNotNull(Relation rel, bool recurse, bool recursing)
{




 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  PartitionDesc partdesc = RelationGetPartitionDesc(rel);

  Assert(partdesc != ((void*)0));
  if (partdesc->nparts > 0 && !recurse && !recursing)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot remove constraint from only the partitioned table when partitions exist"),
      errhint("Do not specify the ONLY keyword.")));
 }
}
