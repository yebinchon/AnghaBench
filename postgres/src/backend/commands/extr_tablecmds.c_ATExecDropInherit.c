
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relispartition; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int ObjectAddress ;
typedef int LOCKMODE ;


 int AccessShareLock ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int RemoveInheritance (TYPE_2__*,TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_openrv (int *,int ) ;

__attribute__((used)) static ObjectAddress
ATExecDropInherit(Relation rel, RangeVar *parent, LOCKMODE lockmode)
{
 ObjectAddress address;
 Relation parent_rel;

 if (rel->rd_rel->relispartition)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot change inheritance of a partition")));






 parent_rel = table_openrv(parent, AccessShareLock);







 RemoveInheritance(rel, parent_rel);

 ObjectAddressSet(address, RelationRelationId,
      RelationGetRelid(parent_rel));


 table_close(parent_rel, NoLock);

 return address;
}
