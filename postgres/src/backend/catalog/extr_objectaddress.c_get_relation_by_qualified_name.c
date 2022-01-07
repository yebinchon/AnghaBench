
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int objectId; scalar_t__ objectSubId; int classId; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef int ObjectType ;
typedef TYPE_3__ ObjectAddress ;
typedef int List ;
typedef int LOCKMODE ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int InvalidOid ;






 int RELKIND_FOREIGN_TABLE ;
 int RELKIND_INDEX ;
 int RELKIND_MATVIEW ;
 int RELKIND_PARTITIONED_INDEX ;
 int RELKIND_PARTITIONED_TABLE ;
 int RELKIND_RELATION ;
 int RELKIND_SEQUENCE ;
 int RELKIND_VIEW ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int RelationRelationId ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int makeRangeVarFromNameList (int *) ;
 TYPE_2__* relation_openrv_extended (int ,int ,int) ;

__attribute__((used)) static ObjectAddress
get_relation_by_qualified_name(ObjectType objtype, List *object,
          Relation *relp, LOCKMODE lockmode,
          bool missing_ok)
{
 Relation relation;
 ObjectAddress address;

 address.classId = RelationRelationId;
 address.objectId = InvalidOid;
 address.objectSubId = 0;

 relation = relation_openrv_extended(makeRangeVarFromNameList(object),
          lockmode, missing_ok);
 if (!relation)
  return address;

 switch (objtype)
 {
  case 132:
   if (relation->rd_rel->relkind != RELKIND_INDEX &&
    relation->rd_rel->relkind != RELKIND_PARTITIONED_INDEX)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not an index",
        RelationGetRelationName(relation))));
   break;
  case 130:
   if (relation->rd_rel->relkind != RELKIND_SEQUENCE)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a sequence",
        RelationGetRelationName(relation))));
   break;
  case 129:
   if (relation->rd_rel->relkind != RELKIND_RELATION &&
    relation->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a table",
        RelationGetRelationName(relation))));
   break;
  case 128:
   if (relation->rd_rel->relkind != RELKIND_VIEW)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a view",
        RelationGetRelationName(relation))));
   break;
  case 131:
   if (relation->rd_rel->relkind != RELKIND_MATVIEW)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a materialized view",
        RelationGetRelationName(relation))));
   break;
  case 133:
   if (relation->rd_rel->relkind != RELKIND_FOREIGN_TABLE)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is not a foreign table",
        RelationGetRelationName(relation))));
   break;
  default:
   elog(ERROR, "unrecognized objtype: %d", (int) objtype);
   break;
 }


 address.objectId = RelationGetRelid(relation);
 *relp = relation;

 return address;
}
