
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rd_refcnt; TYPE_1__* rd_rel; scalar_t__ rd_isnailed; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;


 scalar_t__ AfterTriggerPendingOnRel (int ) ;
 int ERRCODE_OBJECT_IN_USE ;
 int ERROR ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;

void
CheckTableNotInUse(Relation rel, const char *stmt)
{
 int expected_refcnt;

 expected_refcnt = rel->rd_isnailed ? 2 : 1;
 if (rel->rd_refcnt != expected_refcnt)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),

     errmsg("cannot %s \"%s\" because it is being used by active queries in this session",
      stmt, RelationGetRelationName(rel))));

 if (rel->rd_rel->relkind != RELKIND_INDEX &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
  AfterTriggerPendingOnRel(RelationGetRelid(rel)))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_IN_USE),

     errmsg("cannot %s \"%s\" because it has pending trigger events",
      stmt, RelationGetRelationName(rel))));
}
