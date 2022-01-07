
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ relisshared; int oid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int GETSTRUCT (int ) ;
 int InvalidOid ;
 int MyDatabaseId ;
 int PrepareInvalidationState () ;
 int RegisterRelcacheInvalidation (int ,int ) ;

void
CacheInvalidateRelcacheByTuple(HeapTuple classTuple)
{
 Form_pg_class classtup = (Form_pg_class) GETSTRUCT(classTuple);
 Oid databaseId;
 Oid relationId;

 PrepareInvalidationState();

 relationId = classtup->oid;
 if (classtup->relisshared)
  databaseId = InvalidOid;
 else
  databaseId = MyDatabaseId;
 RegisterRelcacheInvalidation(databaseId, relationId);
}
