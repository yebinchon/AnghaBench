
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_14__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; scalar_t__ relowner; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int Oid ;
typedef TYPE_3__ ObjectAddress ;
typedef int List ;
typedef scalar_t__ DependencyType ;
typedef scalar_t__ AttrNumber ;


 int AccessShareLock ;
 int Assert (int) ;
 scalar_t__ DEPENDENCY_AUTO ;
 scalar_t__ DEPENDENCY_INTERNAL ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int NoLock ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_VIEW ;
 scalar_t__ RelationGetNamespace (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 void* RelationGetRelid (TYPE_2__*) ;
 void* RelationRelationId ;
 int deleteDependencyRecordsForClass (void*,void*,void*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 scalar_t__ get_attnum (void*,char*) ;
 int get_rel_name (int ) ;
 int lfirst (int ) ;
 int linitial (int *) ;
 int list_copy (int *) ;
 int list_length (int *) ;
 int list_tail (int *) ;
 int * list_truncate (int ,int) ;
 int * makeRangeVarFromNameList (int *) ;
 int recordDependencyOn (TYPE_3__*,TYPE_3__*,scalar_t__) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_openrv (int *,int ) ;
 scalar_t__ sequenceIsOwned (void*,scalar_t__,int *,int *) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
process_owned_by(Relation seqrel, List *owned_by, bool for_identity)
{
 DependencyType deptype;
 int nnames;
 Relation tablerel;
 AttrNumber attnum;

 deptype = for_identity ? DEPENDENCY_INTERNAL : DEPENDENCY_AUTO;

 nnames = list_length(owned_by);
 Assert(nnames > 0);
 if (nnames == 1)
 {

  if (strcmp(strVal(linitial(owned_by)), "none") != 0)
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("invalid OWNED BY option"),
      errhint("Specify OWNED BY table.column or OWNED BY NONE.")));
  tablerel = ((void*)0);
  attnum = 0;
 }
 else
 {
  List *relname;
  char *attrname;
  RangeVar *rel;


  relname = list_truncate(list_copy(owned_by), nnames - 1);
  attrname = strVal(lfirst(list_tail(owned_by)));


  rel = makeRangeVarFromNameList(relname);
  tablerel = relation_openrv(rel, AccessShareLock);


  if (!(tablerel->rd_rel->relkind == RELKIND_RELATION ||
     tablerel->rd_rel->relkind == RELKIND_FOREIGN_TABLE ||
     tablerel->rd_rel->relkind == RELKIND_VIEW ||
     tablerel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE))
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("referenced relation \"%s\" is not a table or foreign table",
       RelationGetRelationName(tablerel))));


  if (seqrel->rd_rel->relowner != tablerel->rd_rel->relowner)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("sequence must have same owner as table it is linked to")));
  if (RelationGetNamespace(seqrel) != RelationGetNamespace(tablerel))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("sequence must be in same schema as table it is linked to")));


  attnum = get_attnum(RelationGetRelid(tablerel), attrname);
  if (attnum == InvalidAttrNumber)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" does not exist",
       attrname, RelationGetRelationName(tablerel))));
 }




 if (deptype == DEPENDENCY_AUTO)
 {
  Oid tableId;
  int32 colId;

  if (sequenceIsOwned(RelationGetRelid(seqrel), DEPENDENCY_INTERNAL, &tableId, &colId))
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot change ownership of identity sequence"),
      errdetail("Sequence \"%s\" is linked to table \"%s\".",
          RelationGetRelationName(seqrel),
          get_rel_name(tableId))));
 }





 deleteDependencyRecordsForClass(RelationRelationId, RelationGetRelid(seqrel),
         RelationRelationId, deptype);

 if (tablerel)
 {
  ObjectAddress refobject,
     depobject;

  refobject.classId = RelationRelationId;
  refobject.objectId = RelationGetRelid(tablerel);
  refobject.objectSubId = attnum;
  depobject.classId = RelationRelationId;
  depobject.objectId = RelationGetRelid(seqrel);
  depobject.objectSubId = 0;
  recordDependencyOn(&depobject, &refobject, deptype);
 }


 if (tablerel)
  relation_close(tablerel, NoLock);
}
