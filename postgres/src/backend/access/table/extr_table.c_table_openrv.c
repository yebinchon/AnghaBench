
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int LOCKMODE ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationGetRelationName (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 TYPE_2__* relation_openrv (int const*,int ) ;

Relation
table_openrv(const RangeVar *relation, LOCKMODE lockmode)
{
 Relation r;

 r = relation_openrv(relation, lockmode);

 if (r->rd_rel->relkind == RELKIND_INDEX ||
  r->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is an index",
      RelationGetRelationName(r))));
 else if (r->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is a composite type",
      RelationGetRelationName(r))));

 return r;
}
