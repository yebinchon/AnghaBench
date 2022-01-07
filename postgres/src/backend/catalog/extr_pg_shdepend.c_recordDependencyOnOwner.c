
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;


 void* AuthIdRelationId ;
 int SHARED_DEPENDENCY_OWNER ;
 int recordSharedDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

void
recordDependencyOnOwner(Oid classId, Oid objectId, Oid owner)
{
 ObjectAddress myself,
    referenced;

 myself.classId = classId;
 myself.objectId = objectId;
 myself.objectSubId = 0;

 referenced.classId = AuthIdRelationId;
 referenced.objectId = owner;
 referenced.objectSubId = 0;

 recordSharedDependencyOn(&myself, &referenced, SHARED_DEPENDENCY_OWNER);
}
