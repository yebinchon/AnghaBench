
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int oprowner; int oid; int oprjoin; int oprrest; int oprcode; int oprresult; int oprright; int oprleft; int oprnamespace; } ;
struct TYPE_7__ {scalar_t__ objectSubId; int objectId; void* classId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 int DEPENDENCY_NORMAL ;
 int GETSTRUCT (int ) ;
 void* NamespaceRelationId ;
 scalar_t__ OidIsValid (int ) ;
 void* OperatorRelationId ;
 void* ProcedureRelationId ;
 void* TypeRelationId ;
 int deleteDependencyRecordsFor (void*,int ,int) ;
 int deleteSharedDependencyRecordsFor (void*,int ,int ) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnOwner (void*,int ,int ) ;

ObjectAddress
makeOperatorDependencies(HeapTuple tuple, bool isUpdate)
{
 Form_pg_operator oper = (Form_pg_operator) GETSTRUCT(tuple);
 ObjectAddress myself,
    referenced;

 myself.classId = OperatorRelationId;
 myself.objectId = oper->oid;
 myself.objectSubId = 0;





 if (isUpdate)
 {
  deleteDependencyRecordsFor(myself.classId, myself.objectId, 1);
  deleteSharedDependencyRecordsFor(myself.classId, myself.objectId, 0);
 }


 if (OidIsValid(oper->oprnamespace))
 {
  referenced.classId = NamespaceRelationId;
  referenced.objectId = oper->oprnamespace;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(oper->oprleft))
 {
  referenced.classId = TypeRelationId;
  referenced.objectId = oper->oprleft;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(oper->oprright))
 {
  referenced.classId = TypeRelationId;
  referenced.objectId = oper->oprright;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(oper->oprresult))
 {
  referenced.classId = TypeRelationId;
  referenced.objectId = oper->oprresult;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }
 if (OidIsValid(oper->oprcode))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = oper->oprcode;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(oper->oprrest))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = oper->oprrest;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(oper->oprjoin))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = oper->oprjoin;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 recordDependencyOnOwner(OperatorRelationId, oper->oid,
       oper->oprowner);


 recordDependencyOnCurrentExtension(&myself, 1);

 return myself;
}
