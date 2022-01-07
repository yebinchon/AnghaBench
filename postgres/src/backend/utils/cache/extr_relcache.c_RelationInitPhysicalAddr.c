
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ reltablespace; scalar_t__ relfilenode; } ;
struct TYPE_10__ {scalar_t__ spcNode; scalar_t__ relNode; int dbNode; } ;
struct TYPE_11__ {int rd_id; TYPE_2__ rd_node; TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ reltablespace; int relisshared; scalar_t__ relfilenode; int relkind; } ;
typedef TYPE_3__* Relation ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 scalar_t__ ClassOidIndexId ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ HistoricSnapshotActive () ;
 int InvalidOid ;
 scalar_t__ IsTransactionState () ;
 int MyDatabaseId ;
 scalar_t__ MyDatabaseTableSpace ;
 int OidIsValid (scalar_t__) ;
 int RELKIND_HAS_STORAGE (int ) ;
 int RelationGetRelationName (TYPE_3__*) ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 scalar_t__ RelationIsAccessibleInLogicalDecoding (TYPE_3__*) ;
 scalar_t__ RelationMapOidToFilenode (int ,int ) ;
 int ScanPgRelation (scalar_t__,int,int) ;
 int elog (int ,char*,scalar_t__,...) ;
 int heap_freetuple (int ) ;

__attribute__((used)) static void
RelationInitPhysicalAddr(Relation relation)
{

 if (!RELKIND_HAS_STORAGE(relation->rd_rel->relkind))
  return;

 if (relation->rd_rel->reltablespace)
  relation->rd_node.spcNode = relation->rd_rel->reltablespace;
 else
  relation->rd_node.spcNode = MyDatabaseTableSpace;
 if (relation->rd_node.spcNode == GLOBALTABLESPACE_OID)
  relation->rd_node.dbNode = InvalidOid;
 else
  relation->rd_node.dbNode = MyDatabaseId;

 if (relation->rd_rel->relfilenode)
 {
  if (HistoricSnapshotActive()
   && RelationIsAccessibleInLogicalDecoding(relation)
   && IsTransactionState())
  {
   HeapTuple phys_tuple;
   Form_pg_class physrel;

   phys_tuple = ScanPgRelation(RelationGetRelid(relation),
          RelationGetRelid(relation) != ClassOidIndexId,
          1);
   if (!HeapTupleIsValid(phys_tuple))
    elog(ERROR, "could not find pg_class entry for %u",
      RelationGetRelid(relation));
   physrel = (Form_pg_class) GETSTRUCT(phys_tuple);

   relation->rd_rel->reltablespace = physrel->reltablespace;
   relation->rd_rel->relfilenode = physrel->relfilenode;
   heap_freetuple(phys_tuple);
  }

  relation->rd_node.relNode = relation->rd_rel->relfilenode;
 }
 else
 {

  relation->rd_node.relNode =
   RelationMapOidToFilenode(relation->rd_id,
          relation->rd_rel->relisshared);
  if (!OidIsValid(relation->rd_node.relNode))
   elog(ERROR, "could not find relation mapping for relation \"%s\", OID %u",
     RelationGetRelationName(relation), relation->rd_id);
 }
}
