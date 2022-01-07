
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int prsheadline; int prslextype; int prsend; int prstoken; int prsstart; int prsnamespace; int oid; } ;
struct TYPE_7__ {int objectId; scalar_t__ objectSubId; int classId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_ts_parser ;


 int DEPENDENCY_NORMAL ;
 int GETSTRUCT (int ) ;
 int NamespaceRelationId ;
 scalar_t__ OidIsValid (int ) ;
 int ProcedureRelationId ;
 int TSParserRelationId ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;

__attribute__((used)) static ObjectAddress
makeParserDependencies(HeapTuple tuple)
{
 Form_pg_ts_parser prs = (Form_pg_ts_parser) GETSTRUCT(tuple);
 ObjectAddress myself,
    referenced;

 myself.classId = TSParserRelationId;
 myself.objectId = prs->oid;
 myself.objectSubId = 0;


 referenced.classId = NamespaceRelationId;
 referenced.objectId = prs->prsnamespace;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnCurrentExtension(&myself, 0);


 referenced.classId = ProcedureRelationId;
 referenced.objectSubId = 0;

 referenced.objectId = prs->prsstart;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 referenced.objectId = prs->prstoken;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 referenced.objectId = prs->prsend;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 referenced.objectId = prs->prslextype;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 if (OidIsValid(prs->prsheadline))
 {
  referenced.objectId = prs->prsheadline;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 return myself;
}
