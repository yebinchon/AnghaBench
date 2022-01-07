
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {int relispartition; } ;
typedef TYPE_2__* Relation ;
typedef int List ;


 int * NIL ;
 int * generate_partition_qual (TYPE_2__*) ;

List *
RelationGetPartitionQual(Relation rel)
{

 if (!rel->rd_rel->relispartition)
  return NIL;

 return generate_partition_qual(rel);
}
