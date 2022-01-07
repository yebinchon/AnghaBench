
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; int reltoastrelid; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int AccessExclusiveLock ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RelationTruncateIndexes (TYPE_2__*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;
 int table_relation_nontransactional_truncate (TYPE_2__*) ;

void
heap_truncate_one_rel(Relation rel)
{
 Oid toastrelid;





 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  return;


 table_relation_nontransactional_truncate(rel);


 RelationTruncateIndexes(rel);


 toastrelid = rel->rd_rel->reltoastrelid;
 if (OidIsValid(toastrelid))
 {
  Relation toastrel = table_open(toastrelid, AccessExclusiveLock);

  table_relation_nontransactional_truncate(toastrel);
  RelationTruncateIndexes(toastrel);

  table_close(toastrel, NoLock);
 }
}
