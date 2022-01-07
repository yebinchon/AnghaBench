
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* rd_index; TYPE_2__* rd_rel; } ;
struct TYPE_8__ {scalar_t__ relkind; scalar_t__ relam; } ;
struct TYPE_7__ {int indisvalid; } ;
typedef TYPE_3__* Relation ;


 scalar_t__ BTREE_AM_OID ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_3__*) ;
 scalar_t__ RELKIND_INDEX ;
 int RelationGetRelationName (TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*,...) ;

__attribute__((used)) static inline void
btree_index_checkable(Relation rel)
{
 if (rel->rd_rel->relkind != RELKIND_INDEX ||
  rel->rd_rel->relam != BTREE_AM_OID)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("only B-Tree indexes are supported as targets for verification"),
     errdetail("Relation \"%s\" is not a B-Tree index.",
         RelationGetRelationName(rel))));

 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary tables of other sessions"),
     errdetail("Index \"%s\" is associated with temporary relation.",
         RelationGetRelationName(rel))));

 if (!rel->rd_index->indisvalid)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot check index \"%s\"",
      RelationGetRelationName(rel)),
     errdetail("Index is not valid.")));
}
