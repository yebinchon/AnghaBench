
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rd_rel; } ;
struct TYPE_4__ {scalar_t__ relkind; scalar_t__ relispartition; scalar_t__ reloftype; } ;
typedef TYPE_2__* Relation ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
ATPrepAddInherit(Relation child_rel)
{
 if (child_rel->rd_rel->reloftype)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot change inheritance of typed table")));

 if (child_rel->rd_rel->relispartition)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot change inheritance of a partition")));

 if (child_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot change inheritance of partitioned table")));
}
