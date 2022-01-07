
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; int reltype; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int ObjectAddresses ;


 int AccessExclusiveLock ;
 int AlterConstraintNamespaces (int ,int ,int ,int,int *) ;
 int AlterIndexNamespaces (TYPE_2__*,TYPE_2__*,int ,int ,int *) ;
 int AlterRelationNamespaceInternal (TYPE_2__*,int ,int ,int ,int,int *) ;
 int AlterSeqNamespaces (TYPE_2__*,TYPE_2__*,int ,int ,int *,int ) ;
 int AlterTypeNamespaceInternal (int ,int ,int,int,int *) ;
 int Assert (int ) ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
AlterTableNamespaceInternal(Relation rel, Oid oldNspOid, Oid nspOid,
       ObjectAddresses *objsMoved)
{
 Relation classRel;

 Assert(objsMoved != ((void*)0));


 classRel = table_open(RelationRelationId, RowExclusiveLock);

 AlterRelationNamespaceInternal(classRel, RelationGetRelid(rel), oldNspOid,
           nspOid, 1, objsMoved);


 AlterTypeNamespaceInternal(rel->rd_rel->reltype,
          nspOid, 0, 0, objsMoved);


 if (rel->rd_rel->relkind == RELKIND_RELATION ||
  rel->rd_rel->relkind == RELKIND_MATVIEW ||
  rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  AlterIndexNamespaces(classRel, rel, oldNspOid, nspOid, objsMoved);
  AlterSeqNamespaces(classRel, rel, oldNspOid, nspOid,
         objsMoved, AccessExclusiveLock);
  AlterConstraintNamespaces(RelationGetRelid(rel), oldNspOid, nspOid,
          0, objsMoved);
 }

 table_close(classRel, RowExclusiveLock);
}
