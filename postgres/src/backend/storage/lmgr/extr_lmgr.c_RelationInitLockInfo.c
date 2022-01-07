
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dbId; int relId; } ;
struct TYPE_10__ {TYPE_2__ lockRelId; } ;
struct TYPE_11__ {TYPE_3__ rd_lockInfo; TYPE_1__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relisshared; } ;
typedef TYPE_4__* Relation ;


 int Assert (int ) ;
 int InvalidOid ;
 int MyDatabaseId ;
 int OidIsValid (int ) ;
 int RelationGetRelid (TYPE_4__*) ;
 int RelationIsValid (TYPE_4__*) ;

void
RelationInitLockInfo(Relation relation)
{
 Assert(RelationIsValid(relation));
 Assert(OidIsValid(RelationGetRelid(relation)));

 relation->rd_lockInfo.lockRelId.relId = RelationGetRelid(relation);

 if (relation->rd_rel->relisshared)
  relation->rd_lockInfo.lockRelId.dbId = InvalidOid;
 else
  relation->rd_lockInfo.lockRelId.dbId = MyDatabaseId;
}
