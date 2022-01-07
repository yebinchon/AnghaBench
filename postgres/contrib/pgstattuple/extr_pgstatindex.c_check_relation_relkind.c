
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int RelationGetRelationName (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
check_relation_relkind(Relation rel)
{
 if (rel->rd_rel->relkind != RELKIND_RELATION &&
  rel->rd_rel->relkind != RELKIND_INDEX &&
  rel->rd_rel->relkind != RELKIND_MATVIEW &&
  rel->rd_rel->relkind != RELKIND_SEQUENCE &&
  rel->rd_rel->relkind != RELKIND_TOASTVALUE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table, index, materialized view, sequence, or TOAST table",
      RelationGetRelationName(rel))));
}
