
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int relkind; } ;
typedef TYPE_2__* Relation ;


 int ACLCHECK_NOT_OWNER ;
 int ATT_COMPOSITE_TYPE ;
 int ATT_FOREIGN_TABLE ;
 int ATT_INDEX ;
 int ATT_MATVIEW ;
 int ATT_PARTITIONED_INDEX ;
 int ATT_TABLE ;
 int ATT_VIEW ;
 int ATWrongRelkindError (TYPE_2__*,int) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ IsSystemRelation (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_relkind_objtype (int) ;
 int pg_class_ownercheck (int ,int ) ;

__attribute__((used)) static void
ATSimplePermissions(Relation rel, int allowed_targets)
{
 int actual_target;

 switch (rel->rd_rel->relkind)
 {
  case 129:
  case 130:
   actual_target = ATT_TABLE;
   break;
  case 128:
   actual_target = ATT_VIEW;
   break;
  case 132:
   actual_target = ATT_MATVIEW;
   break;
  case 133:
   actual_target = ATT_INDEX;
   break;
  case 131:
   actual_target = ATT_PARTITIONED_INDEX;
   break;
  case 135:
   actual_target = ATT_COMPOSITE_TYPE;
   break;
  case 134:
   actual_target = ATT_FOREIGN_TABLE;
   break;
  default:
   actual_target = 0;
   break;
 }


 if ((actual_target & allowed_targets) == 0)
  ATWrongRelkindError(rel, allowed_targets);


 if (!pg_class_ownercheck(RelationGetRelid(rel), GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(rel->rd_rel->relkind),
        RelationGetRelationName(rel));

 if (!allowSystemTableMods && IsSystemRelation(rel))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      RelationGetRelationName(rel))));
}
