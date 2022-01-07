
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relisshared; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int InvalidOid ;
 int MyDatabaseId ;
 int PrepareInvalidationState () ;
 int RegisterRelcacheInvalidation (int ,int ) ;
 int RelationGetRelid (TYPE_2__*) ;

void
CacheInvalidateRelcache(Relation relation)
{
 Oid databaseId;
 Oid relationId;

 PrepareInvalidationState();

 relationId = RelationGetRelid(relation);
 if (relation->rd_rel->relisshared)
  databaseId = InvalidOid;
 else
  databaseId = MyDatabaseId;

 RegisterRelcacheInvalidation(databaseId, relationId);
}
