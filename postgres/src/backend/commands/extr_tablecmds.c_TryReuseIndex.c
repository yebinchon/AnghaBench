
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int oldNode; int excludeOpNames; int indexParams; int accessMethod; } ;
struct TYPE_9__ {int relNode; } ;
struct TYPE_10__ {TYPE_2__ rd_node; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; } ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef TYPE_4__ IndexStmt ;


 scalar_t__ CheckIndexCompatible (int ,int ,int ,int ) ;
 int NoLock ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int index_close (TYPE_3__*,int ) ;
 TYPE_3__* index_open (int ,int ) ;

__attribute__((used)) static void
TryReuseIndex(Oid oldId, IndexStmt *stmt)
{
 if (CheckIndexCompatible(oldId,
        stmt->accessMethod,
        stmt->indexParams,
        stmt->excludeOpNames))
 {
  Relation irel = index_open(oldId, NoLock);


  if (irel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
   stmt->oldNode = irel->rd_node.relNode;
  index_close(irel, NoLock);
 }
}
