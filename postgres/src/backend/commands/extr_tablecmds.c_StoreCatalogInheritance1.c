
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;


 int InheritsRelationId ;
 int InvokeObjectPostAlterHookArg (int ,void*,int ,void*,int) ;
 void* RelationRelationId ;
 int SetRelationHasSubclass (void*,int) ;
 int StoreSingleInheritance (void*,void*,int ) ;
 int child_dependency_type (int) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
StoreCatalogInheritance1(Oid relationId, Oid parentOid,
       int32 seqNumber, Relation inhRelation,
       bool child_is_partition)
{
 ObjectAddress childobject,
    parentobject;


 StoreSingleInheritance(relationId, parentOid, seqNumber);




 parentobject.classId = RelationRelationId;
 parentobject.objectId = parentOid;
 parentobject.objectSubId = 0;
 childobject.classId = RelationRelationId;
 childobject.objectId = relationId;
 childobject.objectSubId = 0;

 recordDependencyOn(&childobject, &parentobject,
        child_dependency_type(child_is_partition));






 InvokeObjectPostAlterHookArg(InheritsRelationId,
         relationId, 0,
         parentOid, 0);




 SetRelationHasSubclass(parentOid, 1);
}
