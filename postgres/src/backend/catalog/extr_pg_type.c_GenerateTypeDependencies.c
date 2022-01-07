
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ typnamespace; scalar_t__ typinput; scalar_t__ typoutput; scalar_t__ typreceive; scalar_t__ typsend; scalar_t__ typmodin; scalar_t__ typmodout; scalar_t__ typanalyze; scalar_t__ typrelid; scalar_t__ typelem; scalar_t__ typbasetype; scalar_t__ typcollation; int typowner; } ;
struct TYPE_8__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int Node ;
typedef TYPE_2__* Form_pg_type ;


 void* CollationRelationId ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int DEPENDENCY_INTERNAL ;
 int DEPENDENCY_NORMAL ;
 int NIL ;
 void* NamespaceRelationId ;
 scalar_t__ OidIsValid (scalar_t__) ;
 void* ProcedureRelationId ;
 char RELKIND_COMPOSITE_TYPE ;
 void* RelationRelationId ;
 void* TypeRelationId ;
 int deleteDependencyRecordsFor (void*,scalar_t__,int) ;
 int deleteSharedDependencyRecordsFor (void*,scalar_t__,int ) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnExpr (TYPE_1__*,int *,int ,int ) ;
 int recordDependencyOnNewAcl (void*,scalar_t__,int ,int ,void*) ;
 int recordDependencyOnOwner (void*,scalar_t__,int ) ;

void
GenerateTypeDependencies(Oid typeObjectId,
       Form_pg_type typeForm,
       Node *defaultExpr,
       void *typacl,
       char relationKind,
       bool isImplicitArray,
       bool isDependentType,
       bool rebuild)
{
 ObjectAddress myself,
    referenced;


 if (rebuild)
 {
  deleteDependencyRecordsFor(TypeRelationId, typeObjectId, 1);
  deleteSharedDependencyRecordsFor(TypeRelationId, typeObjectId, 0);
 }

 myself.classId = TypeRelationId;
 myself.objectId = typeObjectId;
 myself.objectSubId = 0;







 if (!isDependentType)
 {
  referenced.classId = NamespaceRelationId;
  referenced.objectId = typeForm->typnamespace;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

  recordDependencyOnOwner(TypeRelationId, typeObjectId,
        typeForm->typowner);

  recordDependencyOnNewAcl(TypeRelationId, typeObjectId, 0,
         typeForm->typowner, typacl);

  recordDependencyOnCurrentExtension(&myself, rebuild);
 }


 if (OidIsValid(typeForm->typinput))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typinput;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typoutput))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typoutput;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typreceive))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typreceive;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typsend))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typsend;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typmodin))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typmodin;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typmodout))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typmodout;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 if (OidIsValid(typeForm->typanalyze))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = typeForm->typanalyze;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }
 if (OidIsValid(typeForm->typrelid))
 {
  referenced.classId = RelationRelationId;
  referenced.objectId = typeForm->typrelid;
  referenced.objectSubId = 0;

  if (relationKind != RELKIND_COMPOSITE_TYPE)
   recordDependencyOn(&myself, &referenced, DEPENDENCY_INTERNAL);
  else
   recordDependencyOn(&referenced, &myself, DEPENDENCY_INTERNAL);
 }






 if (OidIsValid(typeForm->typelem))
 {
  referenced.classId = TypeRelationId;
  referenced.objectId = typeForm->typelem;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced,
         isImplicitArray ? DEPENDENCY_INTERNAL : DEPENDENCY_NORMAL);
 }


 if (OidIsValid(typeForm->typbasetype))
 {
  referenced.classId = TypeRelationId;
  referenced.objectId = typeForm->typbasetype;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }



 if (OidIsValid(typeForm->typcollation) &&
  typeForm->typcollation != DEFAULT_COLLATION_OID)
 {
  referenced.classId = CollationRelationId;
  referenced.objectId = typeForm->typcollation;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (defaultExpr)
  recordDependencyOnExpr(&myself, defaultExpr, NIL, DEPENDENCY_NORMAL);
}
