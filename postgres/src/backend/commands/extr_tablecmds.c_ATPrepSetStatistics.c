
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int Node ;
typedef int LOCKMODE ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_relkind_objtype (scalar_t__) ;
 int pg_class_ownercheck (int ,int ) ;

__attribute__((used)) static void
ATPrepSetStatistics(Relation rel, const char *colName, int16 colNum, Node *newValue, LOCKMODE lockmode)
{






 if (rel->rd_rel->relkind != RELKIND_RELATION &&
  rel->rd_rel->relkind != RELKIND_MATVIEW &&
  rel->rd_rel->relkind != RELKIND_INDEX &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
  rel->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table, materialized view, index, or foreign table",
      RelationGetRelationName(rel))));





 if (rel->rd_rel->relkind != RELKIND_INDEX &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
  !colName)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot refer to non-index column by number")));


 if (!pg_class_ownercheck(RelationGetRelid(rel), GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(rel->rd_rel->relkind),
        RelationGetRelationName(rel));
}
